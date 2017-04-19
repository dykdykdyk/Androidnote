(function () {
    /*
     coder yuan 嘻嘻……
     */
    'use strict';
    angular.module('alarmpicker', [])
        .service('timePickerService', function () {
            var _this = this;
            //页面中选择器数量 default : 0
            _this.globalId = 0;
            return _this;
        })
        /*闹钟1选择*/
        .directive('alarmPicker1', [
            '$timeout',
            '$compile', '$ionicScrollDelegate', '$ionicBackdrop', '$q','$translate' ,'timePickerService', 'userService','bleService','decService','connectedService','dialogsManager',
            function ($timeout, $compile, $ionicScrollDelegate, $ionicBackdrop, $q,$translate, timePickerService, userService,bleService,decService,connectedService,dialogsManager) {
                return {
                    template: '<div class="time_picker"> <i class="icon ion-chevron-left ion-clock" style="font-size:20px;color:darkgray;"></i> <span class="item-text"> {{alarm_text1}}</span>{{selectDateTime.show}}   <i class="icon ion-chevron-right icon-accessory"></i></div>',
                    restrict: 'AE',
                    replace: true,
                    scope: {
                        timePickerResult: '=', //双向绑定
                        loadDateTime: '=' // 用于从服务端加载(或其他方式加载时间,反正是延迟的就对了) 初始 时间日期数值  //要配合options 中的loadLazy 属性使用  如果默认时间是从服务端加载回来的
                        //要做如下设置  <time-picker  load-date-time="data.dateTime" loadLazy="true" time-picker-result="result"></time-picker>
                        //即 loadLazy 设置为true(默认是false)标识时间数据延迟加载  data.dateTime 是从服务端加载回来的时间数据
                    },
                    link: function (scope, elm, attrs) {
                        var globalId = ++timePickerService.globalId;
                        var dateTimeNow = new Date();

                        var user_date = userService.all();
//                        var user_date = userDateService.get(uu.userIdd)

                        scope.silentHour1 = user_date.silentHour1;
                        scope.silentMinute1 = user_date.silentMinute1;
                        scope.alarm_text1 = $translate.instant('alarm_text1');
                        scope.save = $translate.instant('ok');
                        scope.cancel1 = $translate.instant('cancel');
                        scope.setting_ok = $translate.instant('setting_ok');
                        scope.connect_ble = $translate.instant('connect_ble');
                        var tem = "<div class='pickerContainer datetimeactive'>" +
                            "<div class='main'>" +
                            "<div  class='header'>{{options.title}}</div>"
                            + "<div class='body'>"
                            + "<div class='row row-no-padding'>" +
                            "<div class='col'  ng-if='!options.hideYear' ><ion-scroll  on-scroll='scrollingEvent(\"year\")' delegate-handle='yearScroll_" + globalId + "' scrollbar-y='false' class='yearContent'>" + "<ul>" + "<li ng-style='year.selected ? { color: \"#0081b8\",fontWeight: \"bold\", fontSize: \"1.2em\"}:{}' ng-click='selectEvent(\"year\",$index)' ng-repeat='year in yearList'>{{year.text}}</li>" + "</ul>" + "</ion-scroll></div>" +
//                            "<div class='col'  ng-if='!options.hideMonth' ><ion-scroll  on-scroll='scrollingEvent(\"month\")' delegate-handle='monthScroll_" + globalId + "' scrollbar-y='false' class='monthContent'>" + "<ul>" + "<li ng-style='month.selected ? { color: \"#0081b8\",fontWeight: \"bold\", fontSize: \"1.2em\"}:{}' ng-click='selectEvent(\"month\",$index)' ng-repeat='month in monthList'>{{month.text}}</li>" + "</ul>" + "</ion-scroll></div>" +
                            "<div class='col ' ng-if='!options.hideDate' ><ion-scroll on-scroll='scrollingEvent(\"date\")' delegate-handle='dateScroll_" + globalId + "' scrollbar-y='false' class='dateContent'>" + "<ul>" + "<li ng-style='date.selected ? { color: \"#0081b8\",fontWeight: \"bold\", fontSize: \"1.2em\"}:{}' ng-click='selectEvent(\"date\",$index)' ng-repeat='date in dateList'>{{date.text}}</li>" + "</ul>" + "</ion-scroll></div>" +
//                            "<div class='col ' ng-if='!options.hideTime' ><ion-scroll on-scroll='scrollingEvent(\"time\")' delegate-handle='timeScroll_" + globalId + "' scrollbar-y='false' class='timeContent'>" + "<ul>" + "<li ng-style='time.selected ? { color: \"#0081b8\",fontWeight: \"bold\", fontSize: \"1.2em\"}:{}' ng-click='selectEvent(\"time\",$index)' ng-repeat='time in timeList'>{{time.text}}</li>" + "</ul>" + "</ion-scroll></div>" +
                            "</div>"
                            + "<div class='body_center_highlight'></div>" +
                            "</div>" +
                            "<div class='footer'>" +
                            "<span ng-click='ok()'>{{save}}</span><span ng-click='cancel()'>{{cancel1}}</span>" +
                            "</div>" +
                            "</div>" +
                            "</div>";
                        // 配置 教程  ！！！！！！！！   time-picker-result 这个选项是必须配置的 用来接收选择结果 其他的可不用 使用默认配置
                        //options 中的参数  都可在页面配置  如
                        // <time-picker
                        // timeSpan="30"
                        // DateTime="2012-20-09 10:30"  ！！！注意这里  时间部分的设置 要 和参数中的 timespan 相对应 如 timeSpan 为 15 时 则生成的时间 列表 是 10:00 10:15 10:30 10:45.... 这时就要求 分钟数要相对 如不能设置 为 10:18
                        // title="我是程序员"
                        // time-picker-result="model.result">
                        // </time-picker>
                        var options = {
                            title: attrs.title || "时间选择",
                            height: 40,// 每个滑动 li 的高度 这里如果也配置的话 要修改css文件中的高度的定义
                            timeNum: parseInt(attrs.timenum) || 24,//可选时间数量
                            yearStart: (attrs.yearstart && parseInt(attrs.yearstart)) || dateTimeNow.getFullYear() - 20,//开始年份
                            yearEnd: (attrs.yearend && parseInt(attrs.yearend)) || dateTimeNow.getFullYear() + 20,  //结束年份
                            monthStart: 12,//开始月份
                            monthEnd: 1,//结束月份
                            DateTime: attrs.datetime && new Date(attrs.datetime) || dateTimeNow, //开始时间日期  不给默认是当天
                            timeSpan: attrs.timespan && parseInt(attrs.timespan) || 15, //时间间隔 默认 15分钟一个间隔 15/30
                            minuteSkip: attrs.minuteskip && parseInt(attrs.minuteskip),//当前时间多少分钟后 可选 15 30  ！！！注意 这个设置会覆盖 datetime中设定的时间部分的值
                            loadLazy: attrs.loadlazy || false,  //标识默认的时间数据是否从服务端加载回来的
                            hideYear: attrs.hideyear || false, //选择器中隐藏年份选择栏
//                            hideMoth: attrs.hidemoth || false,//选择器中隐藏月份选择栏
                            hideDate: attrs.hidedate || false//选择器中隐藏日期选择栏
//                            hideTime: attrs.hidetime || false//选择器中隐藏时间选择栏
                        }
                        scope.options = options;
                        scope.yearScrollTimer = null; //年份滑动定时器
                        scope.monthScrollTimer = null; //月份滑动定时器
                        scope.dateScrollTimer = null; //日期滑动定时器
                        scope.timeScrollTimer = null; //时间滑动定时器
                        scope.dateList = [];
                        scope.timeList = [];
                        scope.yearList = [];
                        scope.monthList = [];
                        scope.selectDateTime = {
                            year: {item: null, index: 0},
                            month: {item: null, index: 0},
                            date: {item: null, index: 0},
                            time: {item: null, index: 0},
                            show: ""
                        };
                        scope.specialDateTime = {
                            bigMoth: [1, 2, 3, 4, 5, 6, 7, 8, 9 , 10, 11 , 12],
                            isBigMonth: function (month) {
                                var length = this.bigMoth.length;
                                while (length--) {
                                    if (this.bigMoth[length] == month) {
                                        return true;
                                    }
                                }
                                return false;
                            },
                            isLoopYear: function (year) { //是否是闰年
                                return (year % 4 == 0) && (year % 100 != 0 || year % 400 == 0);
                            }
                        };
                        if (options.loadLazy) {
                            scope.$watch("loadDateTime", function () {
                                if (scope.loadDateTime) {
                                    options.DateTime = new Date(scope.loadDateTime);
                                    scope.options = options;
                                    init(options);
                                }
                            });
                        } else {
                            scope.options = options;
                            init(options);
                        }

                        elm.on("click", function () {
                            show();
                            scrollToElm(scope.yearScroll, scope.yearList[scope.selectDateTime.year.index - 3]);
                            scrollToElm(scope.monthScroll, scope.monthList[scope.selectDateTime.month.index - 3]);
                            scrollToElm(scope.dateScroll, scope.dateList[scope.selectDateTime.date.index - 3]);
                            scrollToElm(scope.timeScroll, scope.timeList[scope.selectDateTime.time.index - 3]);
                        });
                        //滑动Event
                        scope.scrollingEvent = function (type) {
                            var opEntity = getOperateEntity(type);
                            //当前存在滑动则取消
                            scope[opEntity.scrollTimer] && $timeout.cancel(scope[opEntity.scrollTimer]);

                            var posi = scope[opEntity.scrollHandler].getScrollPosition();
                            var index = Math.abs(Math.round(posi.top / scope.options.height));
                            if (posi.top == index * scope.options.height) {
                                updateSelect(index + 3, type);
                            } else {
                                scope[opEntity.scrollTimer] = $timeout(function () {
                                    posi.top = index * 40;
                                    updateSelect(index + 3, type);
                                    scrollToPosi(scope[opEntity.scrollHandler], posi);
                                }, 100);
                            }
                        }
                        //点击Event
                        scope.selectEvent = function (type, index) {
                            var opEntity = getOperateEntity(type);
                            if (index > 2 && index <= scope[opEntity.data].length - 3) {
                                scrollToElm(scope[opEntity.scrollHandler], scope[opEntity.data][index - 3]);
                            }
                        }

                        //初始化
                        function init(options) {
                            initYear(options);
                            initMoth(options);
                            initDate(options);
                            initTime(options);
                            tem = angular.element(tem);
                            $compile(tem)(scope);
                            angular.element(document.body).append(tem);
                            scope.yearScroll = $ionicScrollDelegate.$getByHandle("yearScroll_" + globalId);
                            scope.monthScroll = $ionicScrollDelegate.$getByHandle("monthScroll_" + globalId);
                            scope.dateScroll = $ionicScrollDelegate.$getByHandle("dateScroll_" + globalId);
                            scope.timeScroll = $ionicScrollDelegate.$getByHandle("timeScroll_" + globalId);
                            getSelectDateTime();
                            setSelectDateTimeShow();
                        }

                        //年份初始化
                        function initYear(options) {
                            var defaultYear = Number(scope.silentHour1) + 1;
                            console.log("defaultYear1-----" + defaultYear);
                            var yearSpan = options.yearEnd - options.yearStart;
                            var text, data, top, item, defaultItem, defaultIndex;
                            prependLi(scope.yearList, 3, "b")
                            for (var i = 0; i <= yearSpan; i++) {
                                text = options.yearStart + i;
                                data = options.yearStart + i;

                                top = options.height + scope.yearList[scope.yearList.length - 1].top;
                                if (i < 10) {
                                    item = createDateTimeLi(0, top, data, data == defaultYear, '0' + (text - 1));
                                } else {
                                    item = createDateTimeLi(0, top, data, data == defaultYear, text - 1);
                                }

                                if (data == defaultYear) {
                                    defaultItem = item;
                                    defaultIndex = scope.yearList.length;
                                }
                                scope.yearList.push(item);
                            }
                            //设置默认选择
                            scope.selectDateTime.year.item = defaultItem;
                            scope.selectDateTime.year.index = defaultIndex;
                            prependLi(scope.yearList, 3, "e")
                        }

                        //月份初始化
                        function initMoth(options) {
                            var defaultMonth = options.DateTime.getMonth() + 1 == 0 ? 12 : prependZero(options.DateTime.getMonth() + 1, 10);
                            var text, data, original, top, item, defaultItem, defaultIndex;
                            prependLi(scope.monthList, 3, "b")
                            for (var i = 1; i <= 12; i++) {
                                original = i;
                                data = prependZero(i, 10);
                                text = prependZero(i, 10) + "月";
                                top = options.height + scope.monthList[scope.monthList.length - 1].top;
                                item = createDateTimeLi(0, top, data, data == defaultMonth, text);
                                if (data == defaultMonth) {
                                    defaultItem = item;
                                    defaultIndex = scope.monthList.length;
                                }
                                scope.monthList.push(item);
                            }
                            //设置默认选择
                            scope.selectDateTime.month.item = defaultItem;
                            scope.selectDateTime.month.index = defaultIndex;
                            prependLi(scope.monthList, 3, "e")
                        }

                        //日期初始化
                        function initDate(options) {
                            //开始时间
                            var defaultDate = scope.silentMinute1;
                            console.log("defaultDate---" + defaultDate);
                            var text, data, top, item, defaultItem, defaultIndex;
                            var dateNum = 59;
                            prependLi(scope.dateList, 3, "b")
                            for (var i = 0; i <= dateNum; i++) {
                                data = prependZero(i, 10);
                                text = prependZero(i, 10) + "";
                                top = options.height + scope.dateList[scope.dateList.length - 1].top;
                                item = createDateTimeLi(0, top, data, data == defaultDate, text);
                                if (data == defaultDate) {
                                    defaultItem = item;
                                    defaultIndex = scope.dateList.length;
                                }
                                scope.dateList.push(item);
                            }
                            //设置默认选择
                            scope.selectDateTime.date.item = defaultItem;
                            scope.selectDateTime.date.index = defaultIndex;
                            prependLi(scope.dateList, 3, "e");
                        }

                        //时间初始化
                        function initTime(options) {
                            prependLi(scope.timeList, 3, "b");
                            var timeStart = options.DateTime.getHours();
                            for (var i = 0; i < options.timeNum; i++) {
                                var t = timeStart + i;
                                if (t >= 24) {
                                    t = t - 24;
                                    t = prependZero(t, 10);
                                } else if (t < 10) {
                                    t = prependZero(t, 10);
                                }
                                //按时间间隔来生产时间li
                                for (var j = 0; j < 60 / (options.timeSpan); j++) {
                                    var top = options.height + scope.timeList[scope.timeList.length - 1].top;
                                    var data = t + ":" + (j * options.timeSpan == 0 ? "00" : j * options.timeSpan);
                                    scope.timeList.push(createDateTimeLi(0, top, data, false, data));
                                }
                            }
                            prependLi(scope.timeList, 3, "e");
                            //获取默认选择时间
                            var defaultSelectTime = getDefaultSelectTime(options);
                            angular.forEach(scope.timeList, function (item, index) {
                                if (item.data == defaultSelectTime) {
                                    item.selected = true;
                                    scope.selectDateTime.time.item = item;
                                    scope.selectDateTime.time.index = index;
                                    return;
                                }
                            });
                        }

                        //计算默认的选择时间
                        function getDefaultSelectTime(options) {
                            var hour;
                            var minu;
                            //不设置 或者默认时间 除以 时间间隔的(timeSpan) 不为整数的
                            if (options.minuteSkip || parseInt((options.DateTime.getMinutes() / options.timeSpan)) != (options.DateTime.getMinutes() / options.timeSpan)) {
                                options.minuteSkip = options.minuteSkip || 30;
                                var datetimeNow = new Date();
                                hour = datetimeNow.getHours();
                                minu = datetimeNow.getMinutes();
                                minu = minu + options.minuteSkip;
                                var span = minu - 60;
                                var spanNum;
                                if (span >= 0) {
                                    hour += 1;
                                    spanNum = Math.round(Math.abs(span) / options.timeSpan);
                                } else {
                                    spanNum = Math.round(minu / options.timeSpan);
                                }
                                switch (spanNum) {
                                    case 1:
                                        minu = options.timeSpan;
                                        break;
                                    case 2:
                                        minu = options.timeSpan * 2;
                                        break;
                                    case 3:
                                        minu = options.timeSpan * 3;
                                        break;
                                    case 4:
                                        hour += 1;
                                        minu = 0;
                                    default :
                                        minu = 0;
                                        break;
                                }
                            } else {
                                hour = options.DateTime.getHours();
                                minu = options.DateTime.getMinutes();
                            }
                            return prependZero(hour, 10) + ":" + prependZero(minu, 10);
                        }

                        function prependZero(data, num) {
                            return data >= num ? data : "0" + data;
                        }

                        function createDateTimeLi(left, top, data, selected, text) {
                            var li = {left: left, top: top, data: data, selected: selected, text: text};
                            return li;
                        }

                        function prependLi(arr, num, loc) {
                            loc = loc || "b";
                            switch (loc) {
                                case "b":
                                    for (var i = 0; i < num; i++) {
                                        arr.push(createDateTimeLi(0, options.height * i, "", false, ""));
                                    }
                                    break;
                                case "e":
                                    //最后那个li元素的 top
                                    var lastPosiTop = arr[arr.length - 1].top;
                                    for (var j = 0; j < num; j++) {
                                        arr.push(createDateTimeLi(0, (options.height * (i + 1) + lastPosiTop), "", false, ""));
                                    }
                                    break;
                            }
                        }

                        //滑动到指定元素
                        function scrollToElm(scorllHandler, elm) {
                            scorllHandler.scrollTo(elm.left, elm.top, true);
                        }

                        //滑动到指定位置
                        function scrollToPosi(scorllHandler, posi) {
                            scorllHandler.scrollTo(posi.left, posi.top, true);
                        }

                        function updateSelect(index, type) {
                            switch (type) {
                                case "year":

                                    //强制
                                    $timeout(function () {
                                        scope.selectDateTime.year.item.selected = false;
                                        scope.yearList[index].selected = true;
                                        scope.selectDateTime.year.item = scope.yearList[index];
                                        scope.selectDateTime.year.index = index;
                                        resettingDate(scope.selectDateTime.year.item.data, parseInt(scope.selectDateTime.month.item.data));  //年份变化 重置日期栏
                                    });
                                    break;
                                case "month":

                                    //强制
                                    $timeout(function () {
                                        scope.selectDateTime.month.item.selected = false;
                                        scope.monthList[index].selected = true;
                                        scope.selectDateTime.month.item = scope.monthList[index];
                                        scope.selectDateTime.month.index = index;
                                        resettingDate(scope.selectDateTime.year.item.data, parseInt(scope.selectDateTime.month.item.data));  //月份变化 重置日期栏
                                    });
                                    break;
                                case "date":
                                    $timeout(function () {
                                        scope.selectDateTime.date.item.selected = false;
                                        scope.dateList[index].selected = true;
                                        scope.selectDateTime.date.item = scope.dateList[index];
                                        scope.selectDateTime.date.index = index;
                                    });
                                    break;
                                case "time":
                                    $timeout(function () {
                                        scope.selectDateTime.time.item.selected = false;
                                        scope.timeList[index].selected = true;
                                        scope.selectDateTime.time.item = scope.timeList[index];
                                        scope.selectDateTime.time.index = index;
                                    });
                                    break;
                            }
                        }

                        function showMessage(data) {
                            dialogsManager.showMessage(data);
                        }
                        //选中时间展示
                        function setSelectDateTimeShow() {

                            var yearTxt = scope.selectDateTime.year.item.text;
                            var monthTxt = scope.selectDateTime.month.item.text;
                            var dateTxt = scope.selectDateTime.date.item.text;
//                            var timeTxt = scope.selectDateTime.time.item.text;
                            scope.selectDateTime.show = (scope.options.hideYear ? "" : yearTxt + ":" )
//                                + (scope.options.hideMoth ? "" : monthTxt)
                                + (scope.options.hideDate ? "" : dateTxt + " ")
//                                + (scope.options.hideTime ? "" : timeTxt);
//                            scope.xx = yearTxt
//                            scope.oo = dateTxt
//
//                            user_date.silentMinute1 = scope.oo;
//                            user_date.silentHour1 = scope.xx;
//                            var dec = decService.all()
//                            console.log("dec.id.silentHour1--" + dec.id + "  dec.silentMinute1--" + dec)
//                            var currentPlatform = ionic.Platform.platform();
//                            if (currentPlatform == 'ios' || currentPlatform == 'android') {
//                                console.log("currentPlatform" + currentPlatform)
//                                if(connectedService.is_connected){
//                                    if(dec.id !=""){
//                                        console.log("dec" + dec.id);
//                                        bleService.setOption(dec.id , "cmdSilentHour1",scope.xx);
//                                        bleService.setOption(dec.id , "cmdSilentMinute1",scope.oo);
//                                        showMessage(scope.setting_ok )
//                                    }
//                                }else{
//                                    showMessage(scope.connect_ble )
//                                }
//
//
//                            }
//                            userService.serialize();

                        }

                        //获取选中的datetime
                        function getSelectDateTime() {
                            var year, month, date, time;
                            for (var i = 0; i < scope.yearList.length; i++) {
                                if (scope.yearList[i].selected) {
                                    year = scope.yearList[i].data;
                                    scope.selectDateTime.year.item = scope.yearList[i];
                                    scope.selectDateTime.year.index = i;
                                    break;
                                }
                            }
                            for (var i = 0; i < scope.monthList.length; i++) {
                                if (scope.monthList[i].selected) {
                                    month = scope.monthList[i].data;
                                    scope.selectDateTime.month.item = scope.monthList[i];
                                    scope.selectDateTime.month.index = i;
                                    break;
                                }
                            }
                            for (var i = 0; i < scope.dateList.length; i++) {
                                if (scope.dateList[i].selected) {
                                    date = scope.dateList[i].data;
                                    scope.selectDateTime.date.item = scope.dateList[i];
                                    scope.selectDateTime.date.index = i;
                                    break;
                                }
                            }
                            for (var j = 0; j < scope.timeList.length; j++) {
                                if (scope.timeList[j].selected) {
                                    time = scope.timeList[j].data;
                                    scope.selectDateTime.time.item = scope.timeList[j];
                                    scope.selectDateTime.time.index = j;
                                    break;
                                }
                            }
                            if (!year) {
                                year = scope.selectDateTime.year.item.data;
                            }
                            if (!month) {
                                year = scope.selectDateTime.month.item.data;
                            }
                            if (!date) {
                                date = scope.selectDateTime.date.item.data;
                            }
                            if (!time) {
                                time = scope.selectDateTime.time.item.data;
                            }
                            var value = year + "-" + month + "-" + date + " " + time;
                            scope.timePickerResult = value;
                            return value;

                        }

                        //根据年份和月份计算日期数量
                        function getDateNum(year, month) {
                            var dateNum = 59;
                            if (scope.specialDateTime.isBigMonth(month)) { //大小月判断
                                dateNum++;
                            } else {
                                if (scope.specialDateTime.isLoopYear(year)) {
                                    if (month == 2)
                                        dateNum--;
                                } else {
                                    if (month == 2)
                                        dateNum--;
                                }
                            }
                            return dateNum;
                        }

                        //重置日期选择栏数据
                        function resettingDate(year, month) {
                            var dateNum = getDateNum(year, month);
                            if (dateNum != scope.dateList.length - 6) { //数量变化 需要进行重置
                                var text, data, top, item, defaultItem, defaultIndex;
                                var refreshNum = dateNum - (scope.dateList.length - 6)
                                if (refreshNum > 0) {//追加日期数量
                                    var lastData = scope.dateList[scope.dateList.length - 4];
                                    for (var i = 1; i <= refreshNum; i++) {
                                        data = lastData.data + i;
                                        text = data + "";
                                        top = options.height + scope.dateList[scope.dateList.length - 4].top;
                                        item = createDateTimeLi(0, top, data, false, text);
                                        scope.dateList.splice(scope.dateList.length - 3, 0, item);
                                    }
                                } else { //移除多余的日期数量
                                    var refreshNum_ = Math.abs(refreshNum);
                                    scope.dateList.splice(scope.dateList.length - 4 - refreshNum_ + 1, refreshNum_);
                                    if (scope.selectDateTime.date.item.data > scope.dateList[scope.dateList.length - 4].data) {
                                        scope.dateList[scope.dateList.length - 4].selected = true;
                                        scope.selectDateTime.date.item = scope.dateList[scope.dateList.length - 4];
                                        scope.selectDateTime.date.item.index = scope.dateList.length - 4;
                                        scrollToElm(scope.dateScroll, scope.dateList[scope.selectDateTime.date.index - 3]);
                                    }
                                }
                            }
                        }

                        function getOperateEntity(type) {
                            var entity = new Object();
                            var scrollTimer, scrollHandler, data, defaultSelected, selectedItem;
                            switch (type) {
                                case "year":
                                    entity.scrollTimer = "yearScrollTimer";
                                    entity.type = type;
                                    entity.scrollHandler = "yearScroll";
                                    entity.data = "yearList";
                                    entity.defaultSelected = scope.selectDateTime.year.item.data;
                                    entity.selectedItem = "year";
                                    break;
                                case "month":
                                    entity.scrollTimer = "monthScrollTimer";
                                    entity.type = type;
                                    entity.scrollHandler = "monthScroll";
                                    entity.data = "monthList";
                                    entity.defaultSelected = scope.selectDateTime.month.item.data;
                                    entity.selectedItem = "month";
                                    break;
                                case "date":
                                    entity.scrollTimer = "dateScrollTimer";
                                    entity.type = type;
                                    entity.scrollHandler = "dateScroll";
                                    entity.data = "dateList";
                                    entity.defaultSelected = scope.selectDateTime.date.item.data;
                                    entity.selectedItem = "date";
                                    break;
                                case "time":
                                    entity.scrollTimer = "timeScrollTimer";
                                    entity.type = type;
                                    entity.scrollHandler = "timeScroll";
                                    entity.data = "timeList";
                                    entity.defaultSelected = scope.selectDateTime.time.item.data;
                                    entity.selectedItem = "time";
                                    break;
                            }
                            return entity;
                        }

                        scope.ok = function () {
                            var datetime = getSelectDateTime();
                            setSelectDateTimeShow();

                            var yearTxt = scope.selectDateTime.year.item.text;
                            var monthTxt = scope.selectDateTime.month.item.text;
                            var dateTxt = scope.selectDateTime.date.item.text;
//                            var timeTxt = scope.selectDateTime.time.item.text;
//                            scope.selectDateTime.show = (scope.options.hideYear ? "" : yearTxt + ":" )
////                                + (scope.options.hideMoth ? "" : monthTxt)
//                                + (scope.options.hideDate ? "" : dateTxt + " ")
//                                + (scope.options.hideTime ? "" : timeTxt);
                            scope.xx = yearTxt
                            scope.oo = dateTxt

                            user_date.silentMinute1 = scope.oo;
                            user_date.silentHour1 = scope.xx;
                            var dec = decService.all()
//                            console.log("dec.id.silentHour1--" + dec.id + "  dec.silentMinute1--" + dec)
                            var currentPlatform = ionic.Platform.platform();
                            hide();

                            scope.alarm1 = {
                                hour1: scope.xx,
                                minute1: scope.oo,
                                weekday1: user_date.silentWeekDay1
                            }
                            if (currentPlatform == 'ios' || currentPlatform == 'android') {
                                console.log("currentPlatform" + currentPlatform)
                                if(connectedService.is_connected){
                                    if(dec.id !=""){
                                        console.log("dec" + dec.id);
//                                        bleService.setOption(dec.id , "cmdSilentHour1",scope.xx);
//                                        bleService.setOption(dec.id , "cmdSilentMinute1",scope.oo);
                                        bleService.setOption(dec.id, "cmdSilentWeekDay1",  scope.alarm1);


                                        showMessage(scope.setting_ok )
                                    }
                                }else{
                                    showMessage(scope.connect_ble )
                                }


                            }
                            userService.serialize();

                        }
                        scope.cancel = function () {
                            hide();
                        }

                        function show() {
                            $ionicBackdrop.retain();
                            tem.css("display", "block");
                        }

                        function hide() {
                            tem.css("display", "none");
                            $ionicBackdrop.release();
                        }

                        function remove() {
                            tem.remove();
                        }

                        scope.$on("$destroy", function () {
                            remove();
                        })
                    }
                }
            }
        ])
        /*闹钟2选择*/
        .directive('alarmPicker2', [
            '$timeout',
            '$compile', '$ionicScrollDelegate', '$ionicBackdrop', '$q','$translate', 'timePickerService', 'userService','bleService','decService','connectedService','dialogsManager',
            function ($timeout, $compile, $ionicScrollDelegate, $ionicBackdrop, $q,$translate, timePickerService, userService,bleService,decService,connectedService,dialogsManager) {
                return {
                    template: '<div class="time_picker"> <i class="icon ion-chevron-left ion-clock" style="font-size:20px;color:darkgray;"></i> <span class="item-text"> {{alarm_text2}}</span>{{selectDateTime.show}}   <i class="icon ion-chevron-right icon-accessory"></i></div>',
                    restrict: 'AE',
                    replace: true,
                    scope: {
                        timePickerResult: '=', //双向绑定
                        loadDateTime: '='  // 用于从服务端加载(或其他方式加载时间,反正是延迟的就对了) 初始 时间日期数值  //要配合options 中的loadLazy 属性使用  如果默认时间是从服务端加载回来的
                        //要做如下设置  <time-picker  load-date-time="data.dateTime" loadLazy="true" time-picker-result="result"></time-picker>
                        //即 loadLazy 设置为true(默认是false)标识时间数据延迟加载  data.dateTime 是从服务端加载回来的时间数据
                    },
                    link: function (scope, elm, attrs) {
                        var globalId = ++timePickerService.globalId;
                        var dateTimeNow = new Date();
//                        var user_date2 = userService.all();

                        var user_date2 = userService.all();
                        scope.silentHour2 = user_date2.silentHour2;
                        scope.silentMinute2 = user_date2.silentMinute2;

                        scope.alarm_text2 = $translate.instant('alarm_text2');
                        scope.save = $translate.instant('ok');
                        scope.cancel1 = $translate.instant('cancel');
                        scope.setting_ok = $translate.instant('setting_ok');
                        scope.connect_ble = $translate.instant('connect_ble');

                        var tem = "<div class='pickerContainer datetimeactive'>" +
                            "<div class='main'>" +
                            "<div  class='header'>{{options.title}}</div>"
                            + "<div class='body'>"
                            + "<div class='row row-no-padding'>" +
                            "<div class='col'  ng-if='!options.hideYear' ><ion-scroll  on-scroll='scrollingEvent(\"year\")' delegate-handle='yearScroll_" + globalId + "' scrollbar-y='false' class='yearContent'>" + "<ul>" + "<li ng-style='year.selected ? { color: \"#0081b8\",fontWeight: \"bold\", fontSize: \"1.2em\"}:{}' ng-click='selectEvent(\"year\",$index)' ng-repeat='year in yearList'>{{year.text}}</li>" + "</ul>" + "</ion-scroll></div>" +
//                            "<div class='col'  ng-if='!options.hideMonth' ><ion-scroll  on-scroll='scrollingEvent(\"month\")' delegate-handle='monthScroll_" + globalId + "' scrollbar-y='false' class='monthContent'>" + "<ul>" + "<li ng-style='month.selected ? { color: \"#0081b8\",fontWeight: \"bold\", fontSize: \"1.2em\"}:{}' ng-click='selectEvent(\"month\",$index)' ng-repeat='month in monthList'>{{month.text}}</li>" + "</ul>" + "</ion-scroll></div>" +
                            "<div class='col ' ng-if='!options.hideDate' ><ion-scroll on-scroll='scrollingEvent(\"date\")' delegate-handle='dateScroll_" + globalId + "' scrollbar-y='false' class='dateContent'>" + "<ul>" + "<li ng-style='date.selected ? { color: \"#0081b8\",fontWeight: \"bold\", fontSize: \"1.2em\"}:{}' ng-click='selectEvent(\"date\",$index)' ng-repeat='date in dateList'>{{date.text}}</li>" + "</ul>" + "</ion-scroll></div>" +
//                            "<div class='col ' ng-if='!options.hideTime' ><ion-scroll on-scroll='scrollingEvent(\"time\")' delegate-handle='timeScroll_" + globalId + "' scrollbar-y='false' class='timeContent'>" + "<ul>" + "<li ng-style='time.selected ? { color: \"#0081b8\",fontWeight: \"bold\", fontSize: \"1.2em\"}:{}' ng-click='selectEvent(\"time\",$index)' ng-repeat='time in timeList'>{{time.text}}</li>" + "</ul>" + "</ion-scroll></div>" +
                            "</div>"
                            + "<div class='body_center_highlight'></div>" +
                            "</div>" +
                            "<div class='footer'>" +
                            "<span ng-click='ok()'>{{save}}</span><span ng-click='cancel()'>{{cancel1}}</span>" +
                            "</div>" +
                            "</div>" +
                            "</div>";
                        // 配置 教程  ！！！！！！！！   time-picker-result 这个选项是必须配置的 用来接收选择结果 其他的可不用 使用默认配置
                        //options 中的参数  都可在页面配置  如
                        // <time-picker
                        // timeSpan="30"
                        // DateTime="2012-20-09 10:30"  ！！！注意这里  时间部分的设置 要 和参数中的 timespan 相对应 如 timeSpan 为 15 时 则生成的时间 列表 是 10:00 10:15 10:30 10:45.... 这时就要求 分钟数要相对 如不能设置 为 10:18
                        // title="我是程序员"
                        // time-picker-result="model.result">
                        // </time-picker>
                        var options = {
                            title: attrs.title || "时间选择",
                            height: 40,// 每个滑动 li 的高度 这里如果也配置的话 要修改css文件中的高度的定义
                            timeNum: parseInt(attrs.timenum) || 24,//可选时间数量
                            yearStart: (attrs.yearstart && parseInt(attrs.yearstart)) || dateTimeNow.getFullYear() - 20,//开始年份
                            yearEnd: (attrs.yearend && parseInt(attrs.yearend)) || dateTimeNow.getFullYear() + 20,  //结束年份
                            monthStart: 12,//开始月份
                            monthEnd: 1,//结束月份
                            DateTime: attrs.datetime && new Date(attrs.datetime) || dateTimeNow, //开始时间日期  不给默认是当天
                            timeSpan: attrs.timespan && parseInt(attrs.timespan) || 15, //时间间隔 默认 15分钟一个间隔 15/30
                            minuteSkip: attrs.minuteskip && parseInt(attrs.minuteskip),//当前时间多少分钟后 可选 15 30  ！！！注意 这个设置会覆盖 datetime中设定的时间部分的值
                            loadLazy: attrs.loadlazy || false,  //标识默认的时间数据是否从服务端加载回来的
                            hideYear: attrs.hideyear || false, //选择器中隐藏年份选择栏
//                            hideMoth: attrs.hidemoth || false,//选择器中隐藏月份选择栏
                            hideDate: attrs.hidedate || false//选择器中隐藏日期选择栏
//                            hideTime: attrs.hidetime || false//选择器中隐藏时间选择栏
                        }
                        scope.options = options;
                        scope.yearScrollTimer = null; //年份滑动定时器
                        scope.monthScrollTimer = null; //月份滑动定时器
                        scope.dateScrollTimer = null; //日期滑动定时器
                        scope.timeScrollTimer = null; //时间滑动定时器
                        scope.dateList = [];
                        scope.timeList = [];
                        scope.yearList = [];
                        scope.monthList = [];
                        scope.selectDateTime = {
                            year: {item: null, index: 0},
                            month: {item: null, index: 0},
                            date: {item: null, index: 0},
                            time: {item: null, index: 0},
                            show: ""
                        };
                        scope.specialDateTime = {
                            bigMoth: [1, 2, 3, 4, 5, 6, 7, 8, 9 , 10, 11 , 12],
                            isBigMonth: function (month) {
                                var length = this.bigMoth.length;
                                while (length--) {
                                    if (this.bigMoth[length] == month) {
                                        return true;
                                    }
                                }
                                return false;
                            },
                            isLoopYear: function (year) { //是否是闰年
                                return (year % 4 == 0) && (year % 100 != 0 || year % 400 == 0);
                            }
                        };
                        if (options.loadLazy) {
                            scope.$watch("loadDateTime", function () {
                                if (scope.loadDateTime) {
                                    options.DateTime = new Date(scope.loadDateTime);
                                    scope.options = options;
                                    init(options);
                                }
                            });
                        } else {
                            scope.options = options;
                            init(options);
                        }

                        elm.on("click", function () {
                            show();
                            scrollToElm(scope.yearScroll, scope.yearList[scope.selectDateTime.year.index - 3]);
                            scrollToElm(scope.monthScroll, scope.monthList[scope.selectDateTime.month.index - 3]);
                            scrollToElm(scope.dateScroll, scope.dateList[scope.selectDateTime.date.index - 3]);
                            scrollToElm(scope.timeScroll, scope.timeList[scope.selectDateTime.time.index - 3]);
                        });
                        //滑动Event
                        scope.scrollingEvent = function (type) {
                            var opEntity = getOperateEntity(type);
                            //当前存在滑动则取消
                            scope[opEntity.scrollTimer] && $timeout.cancel(scope[opEntity.scrollTimer]);

                            var posi = scope[opEntity.scrollHandler].getScrollPosition();
                            var index = Math.abs(Math.round(posi.top / scope.options.height));
                            if (posi.top == index * scope.options.height) {
                                updateSelect(index + 3, type);
                            } else {
                                scope[opEntity.scrollTimer] = $timeout(function () {
                                    posi.top = index * 40;
                                    updateSelect(index + 3, type);
                                    scrollToPosi(scope[opEntity.scrollHandler], posi);
                                }, 100);
                            }
                        }
                        //点击Event
                        scope.selectEvent = function (type, index) {
                            var opEntity = getOperateEntity(type);
                            if (index > 2 && index <= scope[opEntity.data].length - 3) {
                                scrollToElm(scope[opEntity.scrollHandler], scope[opEntity.data][index - 3]);
                            }
                        }

                        //初始化
                        function init(options) {
                            initYear(options);
                            initMoth(options);
                            initDate(options);
                            initTime(options);
                            tem = angular.element(tem);
                            $compile(tem)(scope);
                            angular.element(document.body).append(tem);
                            scope.yearScroll = $ionicScrollDelegate.$getByHandle("yearScroll_" + globalId);
                            scope.monthScroll = $ionicScrollDelegate.$getByHandle("monthScroll_" + globalId);
                            scope.dateScroll = $ionicScrollDelegate.$getByHandle("dateScroll_" + globalId);
                            scope.timeScroll = $ionicScrollDelegate.$getByHandle("timeScroll_" + globalId);
                            getSelectDateTime();
                            setSelectDateTimeShow();
                        }

                        //年份初始化
                        function initYear(options) {

                            var defaultYear = Number(scope.silentHour2) + 1;
                            console.log("defaultYear2-----" + defaultYear);
                            var yearSpan = options.yearEnd - options.yearStart;
                            var text, data, top, item, defaultItem, defaultIndex;
                            prependLi(scope.yearList, 3, "b")
                            for (var i = 0; i <= yearSpan; i++) {
                                text = options.yearStart + i;
                                data = options.yearStart + i;

                                top = options.height + scope.yearList[scope.yearList.length - 1].top;
                                if (i < 10) {
                                    item = createDateTimeLi(0, top, data, data == defaultYear, '0' + (text - 1));
                                } else {
                                    item = createDateTimeLi(0, top, data, data == defaultYear, text - 1);
                                }

                                if (data == defaultYear) {
                                    defaultItem = item;
                                    defaultIndex = scope.yearList.length;
                                }
                                scope.yearList.push(item);
                            }
                            //设置默认选择
                            scope.selectDateTime.year.item = defaultItem;
                            scope.selectDateTime.year.index = defaultIndex;
                            prependLi(scope.yearList, 3, "e")
                        }

                        //月份初始化
                        function initMoth(options) {
                            var defaultMonth = options.DateTime.getMonth() + 1 == 0 ? 12 : prependZero(options.DateTime.getMonth() + 1, 10);
                            var text, data, original, top, item, defaultItem, defaultIndex;
                            prependLi(scope.monthList, 3, "b")
                            for (var i = 1; i <= 12; i++) {
                                original = i;
                                data = prependZero(i, 10);
                                text = prependZero(i, 10) + "月";
                                top = options.height + scope.monthList[scope.monthList.length - 1].top;
                                item = createDateTimeLi(0, top, data, data == defaultMonth, text);
                                if (data == defaultMonth) {
                                    defaultItem = item;
                                    defaultIndex = scope.monthList.length;
                                }
                                scope.monthList.push(item);
                            }
                            //设置默认选择
                            scope.selectDateTime.month.item = defaultItem;
                            scope.selectDateTime.month.index = defaultIndex;
                            prependLi(scope.monthList, 3, "e")
                        }

                        //日期初始化
                        function initDate(options) {
                            //开始时间
                            var defaultDate = scope.silentMinute2;
                            ;
                            var text, data, top, item, defaultItem, defaultIndex;
                            var dateNum = 59;
                            prependLi(scope.dateList, 3, "b")
                            for (var i = 0; i <= dateNum; i++) {
                                data = prependZero(i, 10);
                                text = prependZero(i, 10) + "";
                                top = options.height + scope.dateList[scope.dateList.length - 1].top;
                                item = createDateTimeLi(0, top, data, data == defaultDate, text);
                                if (data == defaultDate) {
                                    defaultItem = item;
                                    defaultIndex = scope.dateList.length;
                                }
                                scope.dateList.push(item);
                            }
                            //设置默认选择
                            scope.selectDateTime.date.item = defaultItem;
                            scope.selectDateTime.date.index = defaultIndex;
                            prependLi(scope.dateList, 3, "e");
                        }

                        //时间初始化
                        function initTime(options) {
                            prependLi(scope.timeList, 3, "b");
                            var timeStart = options.DateTime.getHours();
                            for (var i = 0; i < options.timeNum; i++) {
                                var t = timeStart + i;
                                if (t >= 24) {
                                    t = t - 24;
                                    t = prependZero(t, 10);
                                } else if (t < 10) {
                                    t = prependZero(t, 10);
                                }
                                //按时间间隔来生产时间li
                                for (var j = 0; j < 60 / (options.timeSpan); j++) {
                                    var top = options.height + scope.timeList[scope.timeList.length - 1].top;
                                    var data = t + ":" + (j * options.timeSpan == 0 ? "00" : j * options.timeSpan);
                                    scope.timeList.push(createDateTimeLi(0, top, data, false, data));
                                }
                            }
                            prependLi(scope.timeList, 3, "e");
                            //获取默认选择时间
                            var defaultSelectTime = getDefaultSelectTime(options);
                            angular.forEach(scope.timeList, function (item, index) {
                                if (item.data == defaultSelectTime) {
                                    item.selected = true;
                                    scope.selectDateTime.time.item = item;
                                    scope.selectDateTime.time.index = index;
                                    return;
                                }
                            });
                        }

                        //计算默认的选择时间
                        function getDefaultSelectTime(options) {
                            var hour;
                            var minu;
                            //不设置 或者默认时间 除以 时间间隔的(timeSpan) 不为整数的
                            if (options.minuteSkip || parseInt((options.DateTime.getMinutes() / options.timeSpan)) != (options.DateTime.getMinutes() / options.timeSpan)) {
                                options.minuteSkip = options.minuteSkip || 30;
                                var datetimeNow = new Date();
                                hour = datetimeNow.getHours();
                                minu = datetimeNow.getMinutes();
                                minu = minu + options.minuteSkip;
                                var span = minu - 60;
                                var spanNum;
                                if (span >= 0) {
                                    hour += 1;
                                    spanNum = Math.round(Math.abs(span) / options.timeSpan);
                                } else {
                                    spanNum = Math.round(minu / options.timeSpan);
                                }
                                switch (spanNum) {
                                    case 1:
                                        minu = options.timeSpan;
                                        break;
                                    case 2:
                                        minu = options.timeSpan * 2;
                                        break;
                                    case 3:
                                        minu = options.timeSpan * 3;
                                        break;
                                    case 4:
                                        hour += 1;
                                        minu = 0;
                                    default :
                                        minu = 0;
                                        break;
                                }
                            } else {
                                hour = options.DateTime.getHours();
                                minu = options.DateTime.getMinutes();
                            }
                            return prependZero(hour, 10) + ":" + prependZero(minu, 10);
                        }

                        function prependZero(data, num) {
                            return data >= num ? data : "0" + data;
                        }

                        function createDateTimeLi(left, top, data, selected, text) {
                            var li = {left: left, top: top, data: data, selected: selected, text: text};
                            return li;
                        }

                        function prependLi(arr, num, loc) {
                            loc = loc || "b";
                            switch (loc) {
                                case "b":
                                    for (var i = 0; i < num; i++) {
                                        arr.push(createDateTimeLi(0, options.height * i, "", false, ""));
                                    }
                                    break;
                                case "e":
                                    //最后那个li元素的 top
                                    var lastPosiTop = arr[arr.length - 1].top;
                                    for (var j = 0; j < num; j++) {
                                        arr.push(createDateTimeLi(0, (options.height * (i + 1) + lastPosiTop), "", false, ""));
                                    }
                                    break;
                            }
                        }

                        //滑动到指定元素
                        function scrollToElm(scorllHandler, elm) {
                            scorllHandler.scrollTo(elm.left, elm.top, true);
                        }

                        //滑动到指定位置
                        function scrollToPosi(scorllHandler, posi) {
                            scorllHandler.scrollTo(posi.left, posi.top, true);
                        }

                        function updateSelect(index, type) {
                            switch (type) {
                                case "year":

                                    //强制
                                    $timeout(function () {
                                        scope.selectDateTime.year.item.selected = false;
                                        scope.yearList[index].selected = true;
                                        scope.selectDateTime.year.item = scope.yearList[index];
                                        scope.selectDateTime.year.index = index;
                                        resettingDate(scope.selectDateTime.year.item.data, parseInt(scope.selectDateTime.month.item.data));  //年份变化 重置日期栏
                                    });
                                    break;
                                case "month":

                                    //强制
                                    $timeout(function () {
                                        scope.selectDateTime.month.item.selected = false;
                                        scope.monthList[index].selected = true;
                                        scope.selectDateTime.month.item = scope.monthList[index];
                                        scope.selectDateTime.month.index = index;
                                        resettingDate(scope.selectDateTime.year.item.data, parseInt(scope.selectDateTime.month.item.data));  //月份变化 重置日期栏
                                    });
                                    break;
                                case "date":
                                    $timeout(function () {
                                        scope.selectDateTime.date.item.selected = false;
                                        scope.dateList[index].selected = true;
                                        scope.selectDateTime.date.item = scope.dateList[index];
                                        scope.selectDateTime.date.index = index;
                                    });
                                    break;
                                case "time":
                                    $timeout(function () {
                                        scope.selectDateTime.time.item.selected = false;
                                        scope.timeList[index].selected = true;
                                        scope.selectDateTime.time.item = scope.timeList[index];
                                        scope.selectDateTime.time.index = index;
                                    });
                                    break;
                            }
                        }
                        function showMessage(data) {
                            dialogsManager.showMessage(data);
                        }
                        //选中时间展示
                        function setSelectDateTimeShow() {
                            var yearTxt = scope.selectDateTime.year.item.text;
                            var monthTxt = scope.selectDateTime.month.item.text;
                            var dateTxt = scope.selectDateTime.date.item.text;
//                            var timeTxt = scope.selectDateTime.time.item.text;
                            scope.selectDateTime.show = (scope.options.hideYear ? "" : yearTxt + ":" )
//                                + (scope.options.hideMoth ? "" : monthTxt)
                                + (scope.options.hideDate ? "" : dateTxt + " ")
//                                + (scope.options.hideTime ? "" : timeTxt);
//                            user_date2.silentMinute2 = dateTxt;
//                            user_date2.silentHour2 = yearTxt;
//                            var dec = decService.all()
//                            console.log("user_date.silentHour1--" + user_date2.silentHour2 + ",user_date.silentMinute1--" + user_date2.silentMinute2)
//                            var currentPlatform = ionic.Platform.platform();
//                            if (currentPlatform == 'ios' || currentPlatform == 'android') {
////                                if(typeof(dec) != "undefined" & dec.id != ""){
////                                    bleService.setOption(dec.id, "cmdSilentHour2",yearTxt);
////                                    bleService.setOption(dec.id, "cmdSilentMinute2",dateTxt);
////                                }
//                                if(connectedService.is_connected){
//                                    if(dec.id !=""){
//                                        console.log("dec" + dec.id);
//                                        bleService.setOption(dec.id , "cmdSilentHour2",yearTxt);
//                                        bleService.setOption(dec.id , "cmdSilentMinute2",dateTxt);
//                                        showMessage(scope.setting_ok )
//                                    }
//                                }else{
//                                    showMessage(scope.connect_ble )
//                                }
//                            }
////                            userDateService.update(user_date2);
////                            userDateService.serialize();
//
//                            userService.serialize();
                        }

                        //获取选中的datetime
                        function getSelectDateTime() {
                            var year, month, date, time;
                            for (var i = 0; i < scope.yearList.length; i++) {
                                if (scope.yearList[i].selected) {
                                    year = scope.yearList[i].data;
                                    scope.selectDateTime.year.item = scope.yearList[i];
                                    scope.selectDateTime.year.index = i;
                                    break;
                                }
                            }
                            for (var i = 0; i < scope.monthList.length; i++) {
                                if (scope.monthList[i].selected) {
                                    month = scope.monthList[i].data;
                                    scope.selectDateTime.month.item = scope.monthList[i];
                                    scope.selectDateTime.month.index = i;
                                    break;
                                }
                            }
                            for (var i = 0; i < scope.dateList.length; i++) {
                                if (scope.dateList[i].selected) {
                                    date = scope.dateList[i].data;
                                    scope.selectDateTime.date.item = scope.dateList[i];
                                    scope.selectDateTime.date.index = i;
                                    break;
                                }
                            }
                            for (var j = 0; j < scope.timeList.length; j++) {
                                if (scope.timeList[j].selected) {
                                    time = scope.timeList[j].data;
                                    scope.selectDateTime.time.item = scope.timeList[j];
                                    scope.selectDateTime.time.index = j;
                                    break;
                                }
                            }
                            if (!year) {
                                year = scope.selectDateTime.year.item.data;
                            }
                            if (!month) {
                                year = scope.selectDateTime.month.item.data;
                            }
                            if (!date) {
                                date = scope.selectDateTime.date.item.data;
                            }
                            if (!time) {
                                time = scope.selectDateTime.time.item.data;
                            }
                            var value = year + "-" + month + "-" + date + " " + time;
                            scope.timePickerResult = value;
                            return value;

                        }

                        //根据年份和月份计算日期数量
                        function getDateNum(year, month) {
                            var dateNum = 59;
                            if (scope.specialDateTime.isBigMonth(month)) { //大小月判断
                                dateNum++;
                            } else {
                                if (scope.specialDateTime.isLoopYear(year)) {
                                    if (month == 2)
                                        dateNum--;
                                } else {
                                    if (month == 2)
                                        dateNum--;
                                }
                            }
                            return dateNum;
                        }

                        //重置日期选择栏数据
                        function resettingDate(year, month) {
                            var dateNum = getDateNum(year, month);
                            if (dateNum != scope.dateList.length - 6) { //数量变化 需要进行重置
                                var text, data, top, item, defaultItem, defaultIndex;
                                var refreshNum = dateNum - (scope.dateList.length - 6)
                                if (refreshNum > 0) {//追加日期数量
                                    var lastData = scope.dateList[scope.dateList.length - 4];
                                    for (var i = 1; i <= refreshNum; i++) {
                                        data = lastData.data + i;
                                        text = data + "";
                                        top = options.height + scope.dateList[scope.dateList.length - 4].top;
                                        item = createDateTimeLi(0, top, data, false, text);
                                        scope.dateList.splice(scope.dateList.length - 3, 0, item);
                                    }
                                } else { //移除多余的日期数量
                                    var refreshNum_ = Math.abs(refreshNum);
                                    scope.dateList.splice(scope.dateList.length - 4 - refreshNum_ + 1, refreshNum_);
                                    if (scope.selectDateTime.date.item.data > scope.dateList[scope.dateList.length - 4].data) {
                                        scope.dateList[scope.dateList.length - 4].selected = true;
                                        scope.selectDateTime.date.item = scope.dateList[scope.dateList.length - 4];
                                        scope.selectDateTime.date.item.index = scope.dateList.length - 4;
                                        scrollToElm(scope.dateScroll, scope.dateList[scope.selectDateTime.date.index - 3]);
                                    }
                                }
                            }
                        }

                        function getOperateEntity(type) {
                            var entity = new Object();
                            var scrollTimer, scrollHandler, data, defaultSelected, selectedItem;
                            switch (type) {
                                case "year":
                                    entity.scrollTimer = "yearScrollTimer";
                                    entity.type = type;
                                    entity.scrollHandler = "yearScroll";
                                    entity.data = "yearList";
                                    entity.defaultSelected = scope.selectDateTime.year.item.data;
                                    entity.selectedItem = "year";
                                    break;
                                case "month":
                                    entity.scrollTimer = "monthScrollTimer";
                                    entity.type = type;
                                    entity.scrollHandler = "monthScroll";
                                    entity.data = "monthList";
                                    entity.defaultSelected = scope.selectDateTime.month.item.data;
                                    entity.selectedItem = "month";
                                    break;
                                case "date":
                                    entity.scrollTimer = "dateScrollTimer";
                                    entity.type = type;
                                    entity.scrollHandler = "dateScroll";
                                    entity.data = "dateList";
                                    entity.defaultSelected = scope.selectDateTime.date.item.data;
                                    entity.selectedItem = "date";
                                    break;
                                case "time":
                                    entity.scrollTimer = "timeScrollTimer";
                                    entity.type = type;
                                    entity.scrollHandler = "timeScroll";
                                    entity.data = "timeList";
                                    entity.defaultSelected = scope.selectDateTime.time.item.data;
                                    entity.selectedItem = "time";
                                    break;
                            }
                            return entity;
                        }

                        scope.ok = function () {
                            var datetime = getSelectDateTime();
                            setSelectDateTimeShow();
                            var yearTxt = scope.selectDateTime.year.item.text;
                            var monthTxt = scope.selectDateTime.month.item.text;
                            var dateTxt = scope.selectDateTime.date.item.text;
//                            var timeTxt = scope.selectDateTime.time.item.text;
                            scope.selectDateTime.show = (scope.options.hideYear ? "" : yearTxt + ":" )
//                                + (scope.options.hideMoth ? "" : monthTxt)
                                + (scope.options.hideDate ? "" : dateTxt + " ")
//                                + (scope.options.hideTime ? "" : timeTxt);
                            user_date2.silentMinute2 = dateTxt;
                            user_date2.silentHour2 = yearTxt;
                            var dec = decService.all()
                            console.log("user_date.silentHour1--" + user_date2.silentHour2 + ",user_date.silentMinute1--" + user_date2.silentMinute2)
                            var currentPlatform = ionic.Platform.platform();
                            scope.alarm2 = {
                                hour2: yearTxt,
                                minute2: dateTxt,
                                weekday2: user_date2.silentWeekDay2
                            }
                            if (currentPlatform == 'ios' || currentPlatform == 'android') {
                                if(connectedService.is_connected){
                                    if(dec.id !=""){
                                        console.log("dec" + dec.id);
//                                        bleService.setOption(dec.id , "cmdSilentHour2",yearTxt);
//                                        bleService.setOption(dec.id , "cmdSilentMinute2",dateTxt);
                                        bleService.setOption(dec.id, "cmdSilentWeekDay2", scope.alarm2);
                                        showMessage(scope.setting_ok )
                                    }
                                }else{
                                    showMessage(scope.connect_ble )
                                }
                            }
                            userService.serialize();

                            hide();
                        }
                        scope.cancel = function () {
                            hide();
                        }

                        function show() {
                            $ionicBackdrop.retain();
                            tem.css("display", "block");
                        }

                        function hide() {
                            tem.css("display", "none");
                            $ionicBackdrop.release();
                        }

                        function remove() {
                            tem.remove();
                        }

                        scope.$on("$destroy", function () {
                            remove();
                        })
                    }
                }
            }
        ])

        /*闹钟3选择*/
        .directive('alarmPicker3', [
            '$timeout',
            '$compile', '$ionicScrollDelegate', '$ionicBackdrop', '$q','$translate', 'timePickerService', 'userService','bleService','decService','connectedService','dialogsManager',
            function ($timeout, $compile, $ionicScrollDelegate, $ionicBackdrop, $q,$translate, timePickerService, userService,bleService,decService,connectedService,dialogsManager) {
                return {
                    template: '<div class="time_picker"> <i class="icon ion-chevron-left ion-clock" style="font-size:20px;color:darkgray;"></i> <span class="item-text"> {{alarm_text3}}</span>{{selectDateTime.show}}   <i class="icon ion-chevron-right icon-accessory"></i></div>',
                    restrict: 'AE',
                    replace: true,
                    scope: {
                        timePickerResult: '=', //双向绑定
                        loadDateTime: '='  // 用于从服务端加载(或其他方式加载时间,反正是延迟的就对了) 初始 时间日期数值  //要配合options 中的loadLazy 属性使用  如果默认时间是从服务端加载回来的
                        //要做如下设置  <time-picker  load-date-time="data.dateTime" loadLazy="true" time-picker-result="result"></time-picker>
                        //即 loadLazy 设置为true(默认是false)标识时间数据延迟加载  data.dateTime 是从服务端加载回来的时间数据
                    },
                    link: function (scope, elm, attrs) {
                        var globalId = ++timePickerService.globalId;
                        var dateTimeNow = new Date();
//                        var user_date3 = userService.all();

                        var user_date3 = userService.all();
//                        var user_date3 = userDateService.get(uu.userIdd)

                        scope.silentHour3 = user_date3.silentHour3;
                        scope.silentMinute3 = user_date3.silentMinute3;

                        scope.alarm_text3 = $translate.instant('alarm_text3');
                        scope.save = $translate.instant('ok');
                        scope.cancel1 = $translate.instant('cancel');
                        scope.setting_ok = $translate.instant('setting_ok');
                        scope.connect_ble = $translate.instant('connect_ble');
                        var tem = "<div class='pickerContainer datetimeactive'>" +
                            "<div class='main'>" +
                            "<div  class='header'>{{options.title}}</div>"
                            + "<div class='body'>"
                            + "<div class='row row-no-padding'>" +
                            "<div class='col'  ng-if='!options.hideYear' ><ion-scroll  on-scroll='scrollingEvent(\"year\")' delegate-handle='yearScroll_" + globalId + "' scrollbar-y='false' class='yearContent'>" + "<ul>" + "<li ng-style='year.selected ? { color: \"#0081b8\",fontWeight: \"bold\", fontSize: \"1.2em\"}:{}' ng-click='selectEvent(\"year\",$index)' ng-repeat='year in yearList'>{{year.text}}</li>" + "</ul>" + "</ion-scroll></div>" +
//                            "<div class='col'  ng-if='!options.hideMonth' ><ion-scroll  on-scroll='scrollingEvent(\"month\")' delegate-handle='monthScroll_" + globalId + "' scrollbar-y='false' class='monthContent'>" + "<ul>" + "<li ng-style='month.selected ? { color: \"#0081b8\",fontWeight: \"bold\", fontSize: \"1.2em\"}:{}' ng-click='selectEvent(\"month\",$index)' ng-repeat='month in monthList'>{{month.text}}</li>" + "</ul>" + "</ion-scroll></div>" +
                            "<div class='col ' ng-if='!options.hideDate' ><ion-scroll on-scroll='scrollingEvent(\"date\")' delegate-handle='dateScroll_" + globalId + "' scrollbar-y='false' class='dateContent'>" + "<ul>" + "<li ng-style='date.selected ? { color: \"#0081b8\",fontWeight: \"bold\", fontSize: \"1.2em\"}:{}' ng-click='selectEvent(\"date\",$index)' ng-repeat='date in dateList'>{{date.text}}</li>" + "</ul>" + "</ion-scroll></div>" +
//                            "<div class='col ' ng-if='!options.hideTime' ><ion-scroll on-scroll='scrollingEvent(\"time\")' delegate-handle='timeScroll_" + globalId + "' scrollbar-y='false' class='timeContent'>" + "<ul>" + "<li ng-style='time.selected ? { color: \"#0081b8\",fontWeight: \"bold\", fontSize: \"1.2em\"}:{}' ng-click='selectEvent(\"time\",$index)' ng-repeat='time in timeList'>{{time.text}}</li>" + "</ul>" + "</ion-scroll></div>" +
                            "</div>"
                            + "<div class='body_center_highlight'></div>" +
                            "</div>" +
                            "<div class='footer'>" +
                            "<span ng-click='ok()'>{{save}}</span><span ng-click='cancel()'>{{cancel1}}</span>" +
                            "</div>" +
                            "</div>" +
                            "</div>";
                        // 配置 教程  ！！！！！！！！   time-picker-result 这个选项是必须配置的 用来接收选择结果 其他的可不用 使用默认配置
                        //options 中的参数  都可在页面配置  如
                        // <time-picker
                        // timeSpan="30"
                        // DateTime="2012-20-09 10:30"  ！！！注意这里  时间部分的设置 要 和参数中的 timespan 相对应 如 timeSpan 为 15 时 则生成的时间 列表 是 10:00 10:15 10:30 10:45.... 这时就要求 分钟数要相对 如不能设置 为 10:18
                        // title="我是程序员"
                        // time-picker-result="model.result">
                        // </time-picker>
                        var options = {
                            title: attrs.title || "时间选择",
                            height: 40,// 每个滑动 li 的高度 这里如果也配置的话 要修改css文件中的高度的定义
                            timeNum: parseInt(attrs.timenum) || 24,//可选时间数量
                            yearStart: (attrs.yearstart && parseInt(attrs.yearstart)) || dateTimeNow.getFullYear() - 20,//开始年份
                            yearEnd: (attrs.yearend && parseInt(attrs.yearend)) || dateTimeNow.getFullYear() + 20,  //结束年份
                            monthStart: 12,//开始月份
                            monthEnd: 1,//结束月份
                            DateTime: attrs.datetime && new Date(attrs.datetime) || dateTimeNow, //开始时间日期  不给默认是当天
                            timeSpan: attrs.timespan && parseInt(attrs.timespan) || 15, //时间间隔 默认 15分钟一个间隔 15/30
                            minuteSkip: attrs.minuteskip && parseInt(attrs.minuteskip),//当前时间多少分钟后 可选 15 30  ！！！注意 这个设置会覆盖 datetime中设定的时间部分的值
                            loadLazy: attrs.loadlazy || false,  //标识默认的时间数据是否从服务端加载回来的
                            hideYear: attrs.hideyear || false, //选择器中隐藏年份选择栏
//                            hideMoth: attrs.hidemoth || false,//选择器中隐藏月份选择栏
                            hideDate: attrs.hidedate || false//选择器中隐藏日期选择栏
//                            hideTime: attrs.hidetime || false//选择器中隐藏时间选择栏
                        }
                        scope.options = options;
                        scope.yearScrollTimer = null; //年份滑动定时器
                        scope.monthScrollTimer = null; //月份滑动定时器
                        scope.dateScrollTimer = null; //日期滑动定时器
                        scope.timeScrollTimer = null; //时间滑动定时器
                        scope.dateList = [];
                        scope.timeList = [];
                        scope.yearList = [];
                        scope.monthList = [];
                        scope.selectDateTime = {
                            year: {item: null, index: 0},
                            month: {item: null, index: 0},
                            date: {item: null, index: 0},
                            time: {item: null, index: 0},
                            show: ""
                        };
                        scope.specialDateTime = {
                            bigMoth: [1, 2, 3, 4, 5, 6, 7, 8, 9 , 10, 11 , 12],
                            isBigMonth: function (month) {
                                var length = this.bigMoth.length;
                                while (length--) {
                                    if (this.bigMoth[length] == month) {
                                        return true;
                                    }
                                }
                                return false;
                            },
                            isLoopYear: function (year) { //是否是闰年
                                return (year % 4 == 0) && (year % 100 != 0 || year % 400 == 0);
                            }
                        };
                        if (options.loadLazy) {
                            scope.$watch("loadDateTime", function () {
                                if (scope.loadDateTime) {
                                    options.DateTime = new Date(scope.loadDateTime);
                                    scope.options = options;
                                    init(options);
                                }
                            });
                        } else {
                            scope.options = options;
                            init(options);
                        }

                        elm.on("click", function () {
                            show();
                            scrollToElm(scope.yearScroll, scope.yearList[scope.selectDateTime.year.index - 3]);
                            scrollToElm(scope.monthScroll, scope.monthList[scope.selectDateTime.month.index - 3]);
                            scrollToElm(scope.dateScroll, scope.dateList[scope.selectDateTime.date.index - 3]);
                            scrollToElm(scope.timeScroll, scope.timeList[scope.selectDateTime.time.index - 3]);
                        });
                        //滑动Event
                        scope.scrollingEvent = function (type) {
                            var opEntity = getOperateEntity(type);
                            //当前存在滑动则取消
                            scope[opEntity.scrollTimer] && $timeout.cancel(scope[opEntity.scrollTimer]);

                            var posi = scope[opEntity.scrollHandler].getScrollPosition();
                            var index = Math.abs(Math.round(posi.top / scope.options.height));
                            if (posi.top == index * scope.options.height) {
                                updateSelect(index + 3, type);
                            } else {
                                scope[opEntity.scrollTimer] = $timeout(function () {
                                    posi.top = index * 40;
                                    updateSelect(index + 3, type);
                                    scrollToPosi(scope[opEntity.scrollHandler], posi);
                                }, 100);
                            }
                        }
                        //点击Event
                        scope.selectEvent = function (type, index) {
                            var opEntity = getOperateEntity(type);
                            if (index > 2 && index <= scope[opEntity.data].length - 3) {
                                scrollToElm(scope[opEntity.scrollHandler], scope[opEntity.data][index - 3]);
                            }
                        }

                        //初始化
                        function init(options) {
                            initYear(options);
                            initMoth(options);
                            initDate(options);
                            initTime(options);
                            tem = angular.element(tem);
                            $compile(tem)(scope);
                            angular.element(document.body).append(tem);
                            scope.yearScroll = $ionicScrollDelegate.$getByHandle("yearScroll_" + globalId);
                            scope.monthScroll = $ionicScrollDelegate.$getByHandle("monthScroll_" + globalId);
                            scope.dateScroll = $ionicScrollDelegate.$getByHandle("dateScroll_" + globalId);
                            scope.timeScroll = $ionicScrollDelegate.$getByHandle("timeScroll_" + globalId);
                            getSelectDateTime();
                            setSelectDateTimeShow();
                        }

                        //年份初始化
                        function initYear(options) {

                            var defaultYear = Number(scope.silentHour3) + 1;
                            console.log("defaultYear3-----" + defaultYear);
                            var yearSpan = options.yearEnd - options.yearStart;
                            var text, data, top, item, defaultItem, defaultIndex;
                            prependLi(scope.yearList, 3, "b")
                            for (var i = 0; i <= yearSpan; i++) {
                                text = options.yearStart + i;
                                data = options.yearStart + i;

                                top = options.height + scope.yearList[scope.yearList.length - 1].top;
                                if (i < 10) {
                                    item = createDateTimeLi(0, top, data, data == defaultYear, '0' + (text - 1));
                                } else {
                                    item = createDateTimeLi(0, top, data, data == defaultYear, text - 1);
                                }

                                if (data == defaultYear) {
                                    defaultItem = item;
                                    defaultIndex = scope.yearList.length;
                                }
                                scope.yearList.push(item);
                            }
                            //设置默认选择
                            scope.selectDateTime.year.item = defaultItem;
                            scope.selectDateTime.year.index = defaultIndex;
                            prependLi(scope.yearList, 3, "e")
                        }

                        //月份初始化
                        function initMoth(options) {
                            var defaultMonth = options.DateTime.getMonth() + 1 == 0 ? 12 : prependZero(options.DateTime.getMonth() + 1, 10);
                            var text, data, original, top, item, defaultItem, defaultIndex;
                            prependLi(scope.monthList, 3, "b")
                            for (var i = 1; i <= 12; i++) {
                                original = i;
                                data = prependZero(i, 10);
                                text = prependZero(i, 10) + "月";
                                top = options.height + scope.monthList[scope.monthList.length - 1].top;
                                item = createDateTimeLi(0, top, data, data == defaultMonth, text);
                                if (data == defaultMonth) {
                                    defaultItem = item;
                                    defaultIndex = scope.monthList.length;
                                }
                                scope.monthList.push(item);
                            }
                            //设置默认选择
                            scope.selectDateTime.month.item = defaultItem;
                            scope.selectDateTime.month.index = defaultIndex;
                            prependLi(scope.monthList, 3, "e")
                        }

                        //日期初始化
                        function initDate(options) {
                            //开始时间
                            var defaultDate = scope.silentMinute3;
                            ;
                            var text, data, top, item, defaultItem, defaultIndex;
                            var dateNum = 59;
                            prependLi(scope.dateList, 3, "b")
                            for (var i = 0; i <= dateNum; i++) {
                                data = prependZero(i, 10);
                                text = prependZero(i, 10) + "";
                                top = options.height + scope.dateList[scope.dateList.length - 1].top;
                                item = createDateTimeLi(0, top, data, data == defaultDate, text);
                                if (data == defaultDate) {
                                    defaultItem = item;
                                    defaultIndex = scope.dateList.length;
                                }
                                scope.dateList.push(item);
                            }
                            //设置默认选择
                            scope.selectDateTime.date.item = defaultItem;
                            scope.selectDateTime.date.index = defaultIndex;
                            prependLi(scope.dateList, 3, "e");
                        }

                        //时间初始化
                        function initTime(options) {
                            prependLi(scope.timeList, 3, "b");
                            var timeStart = options.DateTime.getHours();
                            for (var i = 0; i < options.timeNum; i++) {
                                var t = timeStart + i;
                                if (t >= 24) {
                                    t = t - 24;
                                    t = prependZero(t, 10);
                                } else if (t < 10) {
                                    t = prependZero(t, 10);
                                }
                                //按时间间隔来生产时间li
                                for (var j = 0; j < 60 / (options.timeSpan); j++) {
                                    var top = options.height + scope.timeList[scope.timeList.length - 1].top;
                                    var data = t + ":" + (j * options.timeSpan == 0 ? "00" : j * options.timeSpan);
                                    scope.timeList.push(createDateTimeLi(0, top, data, false, data));
                                }
                            }
                            prependLi(scope.timeList, 3, "e");
                            //获取默认选择时间
                            var defaultSelectTime = getDefaultSelectTime(options);
                            angular.forEach(scope.timeList, function (item, index) {
                                if (item.data == defaultSelectTime) {
                                    item.selected = true;
                                    scope.selectDateTime.time.item = item;
                                    scope.selectDateTime.time.index = index;
                                    return;
                                }
                            });
                        }

                        //计算默认的选择时间
                        function getDefaultSelectTime(options) {
                            var hour;
                            var minu;
                            //不设置 或者默认时间 除以 时间间隔的(timeSpan) 不为整数的
                            if (options.minuteSkip || parseInt((options.DateTime.getMinutes() / options.timeSpan)) != (options.DateTime.getMinutes() / options.timeSpan)) {
                                options.minuteSkip = options.minuteSkip || 30;
                                var datetimeNow = new Date();
                                hour = datetimeNow.getHours();
                                minu = datetimeNow.getMinutes();
                                minu = minu + options.minuteSkip;
                                var span = minu - 60;
                                var spanNum;
                                if (span >= 0) {
                                    hour += 1;
                                    spanNum = Math.round(Math.abs(span) / options.timeSpan);
                                } else {
                                    spanNum = Math.round(minu / options.timeSpan);
                                }
                                switch (spanNum) {
                                    case 1:
                                        minu = options.timeSpan;
                                        break;
                                    case 2:
                                        minu = options.timeSpan * 2;
                                        break;
                                    case 3:
                                        minu = options.timeSpan * 3;
                                        break;
                                    case 4:
                                        hour += 1;
                                        minu = 0;
                                    default :
                                        minu = 0;
                                        break;
                                }
                            } else {
                                hour = options.DateTime.getHours();
                                minu = options.DateTime.getMinutes();
                            }
                            return prependZero(hour, 10) + ":" + prependZero(minu, 10);
                        }

                        function prependZero(data, num) {
                            return data >= num ? data : "0" + data;
                        }

                        function createDateTimeLi(left, top, data, selected, text) {
                            var li = {left: left, top: top, data: data, selected: selected, text: text};
                            return li;
                        }

                        function prependLi(arr, num, loc) {
                            loc = loc || "b";
                            switch (loc) {
                                case "b":
                                    for (var i = 0; i < num; i++) {
                                        arr.push(createDateTimeLi(0, options.height * i, "", false, ""));
                                    }
                                    break;
                                case "e":
                                    //最后那个li元素的 top
                                    var lastPosiTop = arr[arr.length - 1].top;
                                    for (var j = 0; j < num; j++) {
                                        arr.push(createDateTimeLi(0, (options.height * (i + 1) + lastPosiTop), "", false, ""));
                                    }
                                    break;
                            }
                        }

                        //滑动到指定元素
                        function scrollToElm(scorllHandler, elm) {
                            scorllHandler.scrollTo(elm.left, elm.top, true);
                        }

                        //滑动到指定位置
                        function scrollToPosi(scorllHandler, posi) {
                            scorllHandler.scrollTo(posi.left, posi.top, true);
                        }

                        function updateSelect(index, type) {
                            switch (type) {
                                case "year":

                                    //强制
                                    $timeout(function () {
                                        scope.selectDateTime.year.item.selected = false;
                                        scope.yearList[index].selected = true;
                                        scope.selectDateTime.year.item = scope.yearList[index];
                                        scope.selectDateTime.year.index = index;
                                        resettingDate(scope.selectDateTime.year.item.data, parseInt(scope.selectDateTime.month.item.data));  //年份变化 重置日期栏
                                    });
                                    break;
                                case "month":

                                    //强制
                                    $timeout(function () {
                                        scope.selectDateTime.month.item.selected = false;
                                        scope.monthList[index].selected = true;
                                        scope.selectDateTime.month.item = scope.monthList[index];
                                        scope.selectDateTime.month.index = index;
                                        resettingDate(scope.selectDateTime.year.item.data, parseInt(scope.selectDateTime.month.item.data));  //月份变化 重置日期栏
                                    });
                                    break;
                                case "date":
                                    $timeout(function () {
                                        scope.selectDateTime.date.item.selected = false;
                                        scope.dateList[index].selected = true;
                                        scope.selectDateTime.date.item = scope.dateList[index];
                                        scope.selectDateTime.date.index = index;
                                    });
                                    break;
                                case "time":
                                    $timeout(function () {
                                        scope.selectDateTime.time.item.selected = false;
                                        scope.timeList[index].selected = true;
                                        scope.selectDateTime.time.item = scope.timeList[index];
                                        scope.selectDateTime.time.index = index;
                                    });
                                    break;
                            }
                        }
                        function showMessage(data) {
                            dialogsManager.showMessage(data);
                        }
                        //选中时间展示
                        function setSelectDateTimeShow() {
                            var yearTxt = scope.selectDateTime.year.item.text;
                            var monthTxt = scope.selectDateTime.month.item.text;
                            var dateTxt = scope.selectDateTime.date.item.text;
//                            var timeTxt = scope.selectDateTime.time.item.text;
                            scope.selectDateTime.show = (scope.options.hideYear ? "" : yearTxt + ":" )
//                                + (scope.options.hideMoth ? "" : monthTxt)
                                + (scope.options.hideDate ? "" : dateTxt + " ")
//                                + (scope.options.hideTime ? "" : timeTxt);
//                            user_date3.silentMinute3 = dateTxt;
//                            user_date3.silentHour3 = yearTxt;
//                            var dec = decService.all()
//                            console.log("user_date.silentHour1--" + user_date3.silentHour3 + ",user_date.silentMinute1--" + user_date3.silentMinute3)
//                            var currentPlatform = ionic.Platform.platform();
//                            if (currentPlatform == 'ios' || currentPlatform == 'android') {
////                                if(typeof(dec) != "undefined" & dec.id != ""){
////                                    bleService.setOption(dec.id, "cmdSilentHour3",yearTxt);
////                                    bleService.setOption(dec.id, "cmdSilentMinute3",dateTxt);
////                                }
//                                if(connectedService.is_connected){
//                                    if(dec.id !=""){
//                                        console.log("dec" + dec.id);
//                                        bleService.setOption(dec.id , "cmdSilentHour3",yearTxt);
//                                        bleService.setOption(dec.id , "cmdSilentMinute3",dateTxt);
//                                        showMessage(scope.setting_ok )
//                                    }
//                                }else{
//                                    showMessage(scope.connect_ble )
//                                }
//                            }
////                            userDateService.update(user_date3);
////                            userDateService.serialize();
//                            userService.serialize();
                        }

                        //获取选中的datetime
                        function getSelectDateTime() {
                            var year, month, date, time;
                            for (var i = 0; i < scope.yearList.length; i++) {
                                if (scope.yearList[i].selected) {
                                    year = scope.yearList[i].data;
                                    scope.selectDateTime.year.item = scope.yearList[i];
                                    scope.selectDateTime.year.index = i;
                                    break;
                                }
                            }
                            for (var i = 0; i < scope.monthList.length; i++) {
                                if (scope.monthList[i].selected) {
                                    month = scope.monthList[i].data;
                                    scope.selectDateTime.month.item = scope.monthList[i];
                                    scope.selectDateTime.month.index = i;
                                    break;
                                }
                            }
                            for (var i = 0; i < scope.dateList.length; i++) {
                                if (scope.dateList[i].selected) {
                                    date = scope.dateList[i].data;
                                    scope.selectDateTime.date.item = scope.dateList[i];
                                    scope.selectDateTime.date.index = i;
                                    break;
                                }
                            }
                            for (var j = 0; j < scope.timeList.length; j++) {
                                if (scope.timeList[j].selected) {
                                    time = scope.timeList[j].data;
                                    scope.selectDateTime.time.item = scope.timeList[j];
                                    scope.selectDateTime.time.index = j;
                                    break;
                                }
                            }
                            if (!year) {
                                year = scope.selectDateTime.year.item.data;
                            }
                            if (!month) {
                                year = scope.selectDateTime.month.item.data;
                            }
                            if (!date) {
                                date = scope.selectDateTime.date.item.data;
                            }
                            if (!time) {
                                time = scope.selectDateTime.time.item.data;
                            }
                            var value = year + "-" + month + "-" + date + " " + time;
                            scope.timePickerResult = value;
                            return value;

                        }

                        //根据年份和月份计算日期数量
                        function getDateNum(year, month) {
                            var dateNum = 59;
                            if (scope.specialDateTime.isBigMonth(month)) { //大小月判断
                                dateNum++;
                            } else {
                                if (scope.specialDateTime.isLoopYear(year)) {
                                    if (month == 2)
                                        dateNum--;
                                } else {
                                    if (month == 2)
                                        dateNum--;
                                }
                            }
                            return dateNum;
                        }

                        //重置日期选择栏数据
                        function resettingDate(year, month) {
                            var dateNum = getDateNum(year, month);
                            if (dateNum != scope.dateList.length - 6) { //数量变化 需要进行重置
                                var text, data, top, item, defaultItem, defaultIndex;
                                var refreshNum = dateNum - (scope.dateList.length - 6)
                                if (refreshNum > 0) {//追加日期数量
                                    var lastData = scope.dateList[scope.dateList.length - 4];
                                    for (var i = 1; i <= refreshNum; i++) {
                                        data = lastData.data + i;
                                        text = data + "";
                                        top = options.height + scope.dateList[scope.dateList.length - 4].top;
                                        item = createDateTimeLi(0, top, data, false, text);
                                        scope.dateList.splice(scope.dateList.length - 3, 0, item);
                                    }
                                } else { //移除多余的日期数量
                                    var refreshNum_ = Math.abs(refreshNum);
                                    scope.dateList.splice(scope.dateList.length - 4 - refreshNum_ + 1, refreshNum_);
                                    if (scope.selectDateTime.date.item.data > scope.dateList[scope.dateList.length - 4].data) {
                                        scope.dateList[scope.dateList.length - 4].selected = true;
                                        scope.selectDateTime.date.item = scope.dateList[scope.dateList.length - 4];
                                        scope.selectDateTime.date.item.index = scope.dateList.length - 4;
                                        scrollToElm(scope.dateScroll, scope.dateList[scope.selectDateTime.date.index - 3]);
                                    }
                                }
                            }
                        }

                        function getOperateEntity(type) {
                            var entity = new Object();
                            var scrollTimer, scrollHandler, data, defaultSelected, selectedItem;
                            switch (type) {
                                case "year":
                                    entity.scrollTimer = "yearScrollTimer";
                                    entity.type = type;
                                    entity.scrollHandler = "yearScroll";
                                    entity.data = "yearList";
                                    entity.defaultSelected = scope.selectDateTime.year.item.data;
                                    entity.selectedItem = "year";
                                    break;
                                case "month":
                                    entity.scrollTimer = "monthScrollTimer";
                                    entity.type = type;
                                    entity.scrollHandler = "monthScroll";
                                    entity.data = "monthList";
                                    entity.defaultSelected = scope.selectDateTime.month.item.data;
                                    entity.selectedItem = "month";
                                    break;
                                case "date":
                                    entity.scrollTimer = "dateScrollTimer";
                                    entity.type = type;
                                    entity.scrollHandler = "dateScroll";
                                    entity.data = "dateList";
                                    entity.defaultSelected = scope.selectDateTime.date.item.data;
                                    entity.selectedItem = "date";
                                    break;
                                case "time":
                                    entity.scrollTimer = "timeScrollTimer";
                                    entity.type = type;
                                    entity.scrollHandler = "timeScroll";
                                    entity.data = "timeList";
                                    entity.defaultSelected = scope.selectDateTime.time.item.data;
                                    entity.selectedItem = "time";
                                    break;
                            }
                            return entity;
                        }

                        scope.ok = function () {
                            var datetime = getSelectDateTime();
                            setSelectDateTimeShow();
                            var yearTxt = scope.selectDateTime.year.item.text;
                            var monthTxt = scope.selectDateTime.month.item.text;
                            var dateTxt = scope.selectDateTime.date.item.text;
//                            var timeTxt = scope.selectDateTime.time.item.text;
                            scope.selectDateTime.show = (scope.options.hideYear ? "" : yearTxt + ":" )
//                                + (scope.options.hideMoth ? "" : monthTxt)
                                + (scope.options.hideDate ? "" : dateTxt + " ")
//                                + (scope.options.hideTime ? "" : timeTxt);
                            user_date3.silentMinute3 = dateTxt;
                            user_date3.silentHour3 = yearTxt;
                            var dec = decService.all()
                            console.log("user_date.silentHour1--" + user_date3.silentHour3 + ",user_date.silentMinute1--" + user_date3.silentMinute3)
                            var currentPlatform = ionic.Platform.platform();
                            scope.alarm3 = {
                                hour3: yearTxt,
                                minute3: dateTxt,
                                weekday3: user_date3.silentWeekDay3
                            }
                            if (currentPlatform == 'ios' || currentPlatform == 'android') {
//                                if(typeof(dec) != "undefined" & dec.id != ""){
//                                    bleService.setOption(dec.id, "cmdSilentHour3",yearTxt);
//                                    bleService.setOption(dec.id, "cmdSilentMinute3",dateTxt);
//                                }
                                if(connectedService.is_connected){
                                    if(dec.id !=""){
                                        console.log("dec" + dec.id);
//                                        bleService.setOption(dec.id , "cmdSilentHour3",yearTxt);
//                                        bleService.setOption(dec.id , "cmdSilentMinute3",dateTxt);
                                        bleService.setOption(dec.id, "cmdSilentWeekDay3", scope.alarm3);
                                        showMessage(scope.setting_ok )
                                    }
                                }else{
                                    showMessage(scope.connect_ble )
                                }
                            }
//                            userDateService.update(user_date3);
//                            userDateService.serialize();
                            userService.serialize();
                            hide();
                        }
                        scope.cancel = function () {
                            hide();
                        }

                        function show() {
                            $ionicBackdrop.retain();
                            tem.css("display", "block");
                        }

                        function hide() {
                            tem.css("display", "none");
                            $ionicBackdrop.release();
                        }

                        function remove() {
                            tem.remove();
                        }

                        scope.$on("$destroy", function () {
                            remove();
                        })
                    }
                }
            }
        ]);

})(window, document);
