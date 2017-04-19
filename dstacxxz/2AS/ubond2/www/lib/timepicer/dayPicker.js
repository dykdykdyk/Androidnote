Date.prototype.Format = function (fmt) {
    var o = {
        "M+": this.getMonth() + 1, //月份
        "d+": this.getDate(), //日
        "h+": this.getHours(), //小时
        "m+": this.getMinutes(), //分
        "s+": this.getSeconds(), //秒
        "q+": Math.floor((this.getMonth() + 3) / 3), //季度
        "S": this.getMilliseconds() //毫秒
    };
    if (/(y+)/.test(fmt)) fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
    for (var k in o)
        if (new RegExp("(" + k + ")").test(fmt)) fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
    return fmt;
};
(function () {
    'use strict';
    angular.module('DatetimePicker', [])
        .service('timePickerService', function () {
            var _this = this;
            _this.globalId = 6;
            return _this;
        }).directive('dayPicker', [
            '$timeout', '$compile', '$ionicScrollDelegate', '$ionicBackdrop', '$q','$translate', 'timePickerService','bleService','decService','connectedService','dialogsManager',
            function ($timeout, $compile, $ionicScrollDelegate, $ionicBackdrop, $q,$translate, timePickerService,bleService,decService,connectedService,dialogsManager) {
                return {
//                    template: '<div class="time_picker"> <i class="icon ion-chevron-left ion-clock" style="font-size:20px;color:darkgray;"></i> <span class="item-text"> {{alarm_text1}}aaa</span>{{selectDateTime.show}}   <i class="icon ion-chevron-right icon-accessory"></i></div>',
                    template: '<div class="time_picker"> <i class="icon ion-chevron-left ion-clock" style="font-size:20px;color:darkgray;"></i> {{selectDateTime.show}}   <i class="icon ion-chevron-right icon-accessory"></i></div>',
                    restrict: 'AE',
                    scope: {
                        timePickerResult: '=', //双向绑定
                        loadDateTime: '=',
                        format : '@'
                    },
                    link: function (scope, elm, attrs) {
                        scope.save = $translate.instant('ok');
                        scope.cancel1 = $translate.instant('cancel');
                        scope.setting_ok = $translate.instant('setting_ok');
                        scope.connect_ble = $translate.instant('connect_ble');
                        var globalId = ++timePickerService.globalId;
                        var dateTimeNow = new Date();
                        var tem = "<div class='pickerContainer datetimeactive'>" +
                            "<div class='main'>" +
                            "<div  class='header'>{{options.title}}</div>"
                            + "<div class='body'>"
                            + "<div class='row row-no-padding'>" +
                            "<div class='col'  ng-if='!options.hideYear' ><ion-scroll on-scroll='scrollingEvent(\"year\")' delegate-handle='yearScroll_" + globalId + "' class='yearContent'>" + "<ion-list><ul>" + "<li ng-style='year.selected ? { color: \"#0081b8\",fontWeight: \"bold\", fontSize: \"1.2em\"}:{}' ng-click='selectEvent(\"year\",$index)' ng-repeat='year in yearList'>{{year.text}}</li>" + "</ion-list></ul>" + "</ion-scroll></div>" +
                            "<div class='col'  ng-if='!options.hideMonth' ><ion-scroll on-scroll='scrollingEvent(\"month\")' delegate-handle='monthScroll_" + globalId + "' class='monthContent'>" + "<ion-list><ul>" + "<li ng-style='month.selected ? { color: \"#0081b8\",fontWeight: \"bold\", fontSize: \"1.2em\"}:{}' ng-click='selectEvent(\"month\",$index)' ng-repeat='month in monthList'>{{month.text}}</li>" + "</ion-list></ul>" + "</ion-scroll></div>" +
                            "<div class='col' ng-if='!options.hideDay' ><ion-scroll on-scroll='scrollingEvent(\"day\")' delegate-handle='dayScroll_" + globalId + "' class='dayContent'>" + "<ion-list><ul>" + "<li ng-style='day.selected ? { color: \"#0081b8\",fontWeight: \"bold\", fontSize: \"1.2em\"}:{}' ng-click='selectEvent(\"day\",$index)' ng-repeat='day in dayList'>{{day.text}}</li>" + "</ion-list></ul>" + "</ion-scroll></div>" +
                            "<div class='col' ng-if='!options.hideHour' ><ion-scroll on-scroll='scrollingEvent(\"hour\")' delegate-handle='hourScroll_" + globalId + "' class='hourContent'>" + "<ion-list><ul>" + "<li ng-style='hour.selected ? { color: \"#0081b8\",fontWeight: \"bold\", fontSize: \"1.2em\"}:{}' ng-click='selectEvent(\"hour\",$index)' ng-repeat='hour in hourList'>{{hour.text}}</li>" + "</ion-list></ul>" + "</ion-scroll></div>" +
                            "<div class='col' ng-if='!options.hideMinute' ><ion-scroll on-scroll='scrollingEvent(\"minute\")' delegate-handle='minuteScroll_" + globalId + "' class='minuteContent'>" + "<ion-list><ul>" + "<li ng-style='minute.selected ? { color: \"#0081b8\",fontWeight: \"bold\", fontSize: \"1.2em\"}:{}' ng-click='selectEvent(\"minute\",$index)' ng-repeat='minute in minuteList'>{{minute.text}}</li>" + "</ion-list></ul>" + "</ion-scroll></div>" +
                            "</div>"
                            + "<div class='body_center_highlight'></div>" +
                            "</div>" +
                            "<div class='footer'>" +
                            "<span ng-click='ok()'>{{save}}</span><span ng-click='cancel()'>{{cancel1}}</span>" +
                            "</div>" +
                            "</div>" +
                            "</div>";
                        var options = {
                            title: attrs.title || "时间选择",
                            height: 40,// 每个滑动 li 的高度 这里如果也配置的话 要修改css文件中的高度的定义
                            yearStart: (attrs.yearstart && parseInt(attrs.yearstart)) || dateTimeNow.getFullYear() - 20,//开始年份
                            yearEnd: (attrs.yearend && parseInt(attrs.yearend)) || dateTimeNow.getFullYear() + 20,  //结束年份
                            monthStart: 12,//开始月份
                            monthEnd: 1,//结束月份
                            DateTime: attrs.datetime && new Date(attrs.datetime) || dateTimeNow, //开始时间日期  不给默认是当天
                            loadLazy: attrs.loadlazy || false,//是否动态更新数据
                            hideYear: scope.format.indexOf('y') < 0,
                            hideMoth: scope.format.indexOf('M') < 0,
                            hideDay: scope.format.indexOf('d') < 0,
                            hideHour: scope.format.indexOf('h') < 0,
                            hideMinute : scope.format.indexOf('m') < 0
                        };
                        scope.options = options;
                        scope.yearScrollTimer = null; //年份滑动定时器
                        scope.monthScrollTimer = null; //月份滑动定时器
                        scope.dayScrollTimer = null; //日期滑动定时器
                        scope.hourScrollTimer = null; //时间滑动定时器
                        scope.minuteScrollTimer = null; //时间滑动定时器
                        scope.yearList = [];
                        scope.monthList = [];
                        scope.dayList = [];
                        scope.hourList = [];
                        scope.minuteList = [];
                        scope.selectDateTime = {
                            year: {item: null, index: 0},
                            month: {item: null, index: 0},
                            day: {item: null, index: 0},
                            hour: {item: null, index: 0},
                            minute:{item:null,index:0},
                            show: ""
                        };
                        scope.specialDateTime = {
                            bigMoth: [1,3, 5, 7, 8,10,12],
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
                            scope.options.DateTime = new Date();
                            if(!scope.options.hideYear)
                                scrollToElm(scope.yearScroll, scope.yearList[scope.selectDateTime.year.index - 3]);
                            if(!scope.options.hideMoth)
                                scrollToElm(scope.monthScroll, scope.monthList[scope.selectDateTime.month.index - 3]);
                            if(!scope.options.hideDay)
                                scrollToElm(scope.dayScroll, scope.dayList[scope.selectDateTime.day.index - 3]);
                            if(!scope.options.hideHour)
                                scrollToElm(scope.hourScroll, scope.hourList[scope.selectDateTime.hour.index - 3]);
                            if(!scope.options.hideMinute)
                                scrollToElm(scope.minuteScroll, scope.minuteList[scope.selectDateTime.minute.index - 3]);
                        });
                        //滑动Event
                        scope.scrollingEvent = function (type) {
                            var opEntity = getOperateEntity(type);
                            if(!scope[opEntity.scrollTimer]){
                                if(scope[opEntity.scrollTimer_updated]){
                                    scope[opEntity.scrollTimer_updated] = false;
                                }else{
                                    scope[opEntity.scrollTimer] = $timeout(function () {
                                        var posi = scope[opEntity.scrollHandler].getScrollPosition();
                                        var index = Math.abs(Math.round(posi.top / scope.options.height));
                                        scope[opEntity.scrollTimer] = null;
                                        if (Math.abs(posi.top - index * scope.options.height) < 10) {
                                            posi.top = index * 40;
                                            updateSelect(index + 3, type);
//                                            scrollToPosi(scope[opEntity.scrollHandler], posi);
                                        }
                                    }, 100);
                                }
                            }
                        };
                        //点击Event
                        scope.selectEvent = function (type, index) {
                            var opEntity = getOperateEntity(type);
                            if (index > 2 && index <= scope[opEntity.data].length - 3) {
                                scrollToElm(scope[opEntity.scrollHandler], scope[opEntity.data][index - 3]);
                            }
                        };

                        //初始化
                        function init(options) {
                            initYear(options);
                            initMoth(options);
                            initDay(options);
                            initHour(options);
                            initMinute(options);
                            tem = angular.element(tem);
                            $compile(tem)(scope);
                            angular.element(document.body).append(tem);
                            if(!scope.options.hideYear)
                                scope.yearScroll = $ionicScrollDelegate.$getByHandle("yearScroll_" + globalId);
                            if(!scope.options.hideMoth)
                                scope.monthScroll = $ionicScrollDelegate.$getByHandle("monthScroll_" + globalId);
                            if(!scope.options.hideDay)
                                scope.dayScroll = $ionicScrollDelegate.$getByHandle("dayScroll_" + globalId);
                            if(!scope.options.hideHour)
                                scope.hourScroll = $ionicScrollDelegate.$getByHandle("hourScroll_" + globalId);
                            if(!scope.options.hideMinute)
                                scope.minuteScroll = $ionicScrollDelegate.$getByHandle("minuteScroll_" + globalId);
                            getSelectDateTime();
                        }

                        //年份初始化
                        function initYear(options) {
                            var defaultYear = options.DateTime.getFullYear();
                            var yearSpan = options.yearEnd - options.yearStart;
                            var text, data, top, item, defaultItem, defaultIndex;
                            prependLi(scope.yearList, 3, "b");
                            for (var i = 0; i <= yearSpan; i++) {
                                text = (options.yearStart + i);
                                data = options.yearStart + i;
                                top = options.height + scope.yearList[scope.yearList.length - 1].top;
                                item = createDateTimeLi(0, top, data, data == defaultYear, text);
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
                            var text, data, top, item, defaultItem, defaultIndex;
                            prependLi(scope.monthList, 3, "b");
                            for (var i = 1; i <= 12; i++) {
                                data = prependZero(i, 10);
                                text = data ;
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
                        function initDay(options) {
                            //开始时间
                            var defaultDate = prependZero(options.DateTime.getDate(), 10);
                            var text, data, top, item, defaultItem, defaultIndex;
                            var dateNum = getDateNum(options.DateTime.getFullYear(), options.DateTime.getMonth() + 1);
                            prependLi(scope.dayList, 3, "b");
                            for (var i = 1; i <= dateNum; i++) {
                                data = prependZero(i, 10);
                                text = data ;
                                top = options.height + scope.dayList[scope.dayList.length - 1].top;
                                item = createDateTimeLi(0, top, data, data == defaultDate, text);
                                if (data == defaultDate) {
                                    defaultItem = item;
                                    defaultIndex = scope.dayList.length;
                                }
                                scope.dayList.push(item);
                            }
                            //设置默认选择
                            scope.selectDateTime.day.item = defaultItem;
                            scope.selectDateTime.day.index = defaultIndex;
                            prependLi(scope.dayList, 3, "e");
                        }

                        //时间初始化
                        function initHour(options) {
                            prependLi(scope.hourList, 3, "b");
                            var defaultHours = prependZero(options.DateTime.getHours(), 10);
                            var text, data, top, item, defaultItem, defaultIndex;
                            for (var i = 0; i < 24; i++) {
                                data = prependZero(i, 10);
                                text = data ;
                                top = options.height + scope.hourList[scope.hourList.length - 1].top;
                                item = createDateTimeLi(0, top, data, data == defaultHours, text);
                                if (data == defaultHours) {
                                    defaultItem = item;
                                    defaultIndex = scope.hourList.length;
                                }
                                scope.hourList.push(item);
                            }
                            //设置默认选择
                            scope.selectDateTime.hour.item = defaultItem;
                            scope.selectDateTime.hour.index = defaultIndex;
                            prependLi(scope.hourList, 3, "e");
                        }

                        //时间初始化
                        function initMinute(options) {
                            //minute
                            prependLi(scope.minuteList, 3, "b");
                            var defaultDate = prependZero(options.DateTime.getMinutes(), 10);
                            var text, data, top, item, defaultItem, defaultIndex;
                            for (var i = 0; i < 60; i++) {
                                data = prependZero(i, 10);
                                text = data ;
                                top = options.height + scope.minuteList[scope.minuteList.length - 1].top;
                                item = createDateTimeLi(0, top, data, data == defaultDate, text);
                                if (data == defaultDate) {
                                    defaultItem = item;
                                    defaultIndex = scope.minuteList.length;
                                }
                                scope.minuteList.push(item);
                            }
                            //设置默认选择
                            scope.selectDateTime.minute.item = defaultItem;
                            scope.selectDateTime.minute.index = defaultIndex;
                            prependLi(scope.minuteList, 3, "e");
                        }

                        function prependZero(data, num) {
                            return data >= num ? data : "0" + data;
                        }

                        function createDateTimeLi(left, top, data, selected, text) {
                            return {left: left, top: top, data: data, selected: selected, text: text};
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
                                    $timeout(function () {
                                        scope.selectDateTime.year.item.selected = false;
                                        scope.yearList[index].selected = true;
                                        scope.selectDateTime.year.item = scope.yearList[index];
                                        scope.selectDateTime.year.index = index;
                                        resettingDate(scope.selectDateTime.year.item.data, parseInt(scope.selectDateTime.month.item.data));  //年份变化 重置日期栏
                                    });
                                    break;
                                case "month":
                                    $timeout(function () {
                                        scope.selectDateTime.month.item.selected = false;
                                        scope.monthList[index].selected = true;
                                        scope.selectDateTime.month.item = scope.monthList[index];
                                        scope.selectDateTime.month.index = index;
                                        resettingDate(scope.selectDateTime.year.item.data, parseInt(scope.selectDateTime.month.item.data));  //月份变化 重置日期栏
                                    });
                                    break;
                                case "day":
                                    $timeout(function () {
                                        scope.selectDateTime.day.item.selected = false;
                                        scope.dayList[index].selected = true;
                                        scope.selectDateTime.day.item = scope.dayList[index];
                                        scope.selectDateTime.day.index = index;
                                    });
                                    break;
                                case "hour":
                                    $timeout(function () {
                                        scope.selectDateTime.hour.item.selected = false;
                                        scope.hourList[index].selected = true;
                                        scope.selectDateTime.hour.item = scope.hourList[index];
                                        scope.selectDateTime.hour.index = index;
                                    });
                                    break;
                                case "minute":
                                    $timeout(function () {
                                        scope.selectDateTime.minute.item.selected = false;
                                        scope.minuteList[index].selected = true;
                                        scope.selectDateTime.minute.item = scope.minuteList[index];
                                        scope.selectDateTime.minute.index = index;
                                    });
                                    break;
                            }
                        }

                        //获取选中的datetime
                        function getSelectDateTime() {
                            var year, month, day, hour, minute;
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
                            for (var i = 0; i < scope.dayList.length; i++) {
                                if (scope.dayList[i].selected) {
                                    day = scope.dayList[i].data;
                                    scope.selectDateTime.day.item = scope.dayList[i];
                                    scope.selectDateTime.day.index = i;
                                    break;
                                }
                            }
                            for (var j = 0; j < scope.hourList.length; j++) {
                                if (scope.hourList[j].selected) {
                                    hour = scope.hourList[j].data;
                                    scope.selectDateTime.hour.item = scope.hourList[j];
                                    scope.selectDateTime.hour.index = j;
                                    break;
                                }
                            }
                            for (var j = 0; j < scope.minuteList.length; j++) {
                                if (scope.minuteList[j].selected) {
                                    minute = scope.minuteList[j].data;
                                    scope.selectDateTime.minute.item = scope.minuteList[j];
                                    scope.selectDateTime.minute.index = j;
                                    break;
                                }
                            }
                            if (!year) {
                                year = scope.selectDateTime.year.item.data;
                            }
                            if (!month) {
                                year = scope.selectDateTime.month.item.data;
                            }
                            if (!day) {
                                day = scope.selectDateTime.day.item.data;
                            }
                            if (!hour) {
                                hour = scope.selectDateTime.hour.item.data;
                            }
                            if (!minute) {
                                minute = scope.selectDateTime.minute.item.data;
                            }
                            var value = year + "-" + month + "-" + day + " " + hour + ":" + minute;
                            if(scope.format != null){
                                value = new Date(value).Format(scope.format);
                            }else{
                                value = new Date(value).getTime();
                            }
                            try{ scope.timePickerResult = value; }catch(e){}
//                            return value;
//                            var yearTxt = scope.selectDateTime.year.item.text;
//                            var monthTxt = scope.selectDateTime.month.item.text;
//                            scope.options.yearSelected = yearTxt;  //默认选中数据
//                            scope.options.monthSelected = monthTxt;   //默认选中数据
                            scope.selectDateTime.show = value ;

                        }

                        //根据年份和月份计算日期数量
                        function getDateNum(year, month) {
                            var dateNum = 30;
                            if (scope.specialDateTime.isBigMonth(month)) { //大小月判断
                                dateNum++;
                            } else {
                                if (scope.specialDateTime.isLoopYear(year)) {
                                    if (month == 2)
                                        dateNum--;
                                } else {
                                    if (month == 2)
                                        dateNum -= 2;
                                }
                            }
                            return dateNum;
                        }

                        //重置日期选择栏数据
                        function resettingDate(year, month) {
                            var dateNum = getDateNum(year, month);
                            if (dateNum != scope.dayList.length - 6) { //数量变化 需要进行重置
                                var text, data, top, item, defaultItem, defaultIndex;
                                var refreshNum = dateNum - (scope.dayList.length - 6)
                                if (refreshNum > 0) {//追加日期数量
                                    var lastData = scope.dayList[scope.dayList.length - 4];
                                    for (var i = 1; i <= refreshNum; i++) {
                                        data = lastData.data + i;
                                        text = data ;
                                        top = options.height + scope.dayList[scope.dayList.length - 4].top;
                                        item = createDateTimeLi(0, top, data, false, text);
                                        scope.dayList.splice(scope.dayList.length - 3, 0, item);
                                    }
                                    console.log("1scope.selectDateTime.date.item.data..."+scope.selectDateTime.date.item.data)
                                } else { //移除多余的日期数量
                                    var refreshNum_ = Math.abs(refreshNum);
                                    scope.dayList.splice(scope.dayList.length - 4 - refreshNum_ + 1, refreshNum_);
                                    console.log("scope.selectDateTime.date.item.data..."+scope.selectDateTime.date.item.data)
                                    console.log("scope.selectDateTime.date.item..."+scope.selectDateTime.date.item)
                                    if (scope.selectDateTime.date.item.data > scope.dayList[scope.dayList.length - 4].data) {
                                        scope.dayList[scope.dayList.length - 4].selected = true;
                                        scope.selectDateTime.date.item = scope.dayList[scope.dateList.length - 4];
                                        scope.selectDateTime.date.item.index = scope.dateList.length - 4;
                                        scrollToElm(scope.dateScroll, scope.dayList[scope.selectDateTime.date.index - 3]);
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
                                    entity.scrollTimer_updated = false;
                                    entity.type = type;
                                    entity.scrollHandler = "yearScroll";
                                    entity.data = "yearList";
                                    entity.defaultSelected = scope.selectDateTime.year.item.data;
                                    entity.selectedItem = "year";
                                    break;
                                case "month":
                                    entity.scrollTimer = "monthScrollTimer";
                                    entity.type = type;
                                    entity.scrollTimer_updated = false;
                                    entity.scrollHandler = "monthScroll";
                                    entity.data = "monthList";
                                    entity.defaultSelected = scope.selectDateTime.month.item.data;
                                    entity.selectedItem = "month";
                                    break;
                                case "day":
                                    entity.scrollTimer = "dayScrollTimer";
                                    entity.type = type;
                                    entity.scrollTimer_updated = false;
                                    entity.scrollHandler = "dayScroll";
                                    entity.data = "dayList";
                                    entity.defaultSelected = scope.selectDateTime.day.item.data;
                                    entity.selectedItem = "day";
                                    break;
                                case "hour":
                                    entity.scrollTimer = "hourScrollTimer";
                                    entity.type = type;
                                    entity.scrollTimer_updated = false;
                                    entity.scrollHandler = "hourScroll";
                                    entity.data = "hourList";
                                    entity.defaultSelected = scope.selectDateTime.hour.item.data;
                                    entity.selectedItem = "hour";
                                    break;
                                case "minute":
                                    entity.scrollTimer = "minuteScrollTimer";
                                    entity.type = type;
                                    entity.scrollTimer_updated = false;
                                    entity.scrollHandler = "minuteScroll";
                                    entity.data = "minuteList";
                                    entity.defaultSelected = scope.selectDateTime.minute.item.data;
                                    entity.selectedItem = "minute";
                                    break;
                            }
                            return entity;
                        }
                        function showMessage(data) {
                            dialogsManager.showMessage(data);
                        }
                        scope.ok = function () {
                            getSelectDateTime();
                            scope.time_select = {
                                year: scope.selectDateTime.year.item.data,
                                month: scope.selectDateTime.month.item.data,
                                day: scope.selectDateTime.day.item.data,
                                hours: scope.selectDateTime.hour.item.data,
                                minute: scope.selectDateTime.minute.item.data
                            }
                            var dec = decService.all()
//                            console.log("dec.id.silentHour1--" + dec.id + "  dec.silentMinute1--" + dec)
                            var currentPlatform = ionic.Platform.platform();
                            hide();
                            if (currentPlatform == 'ios' || currentPlatform == 'android') {
                                console.log("currentPlatform" + currentPlatform)
                                if(connectedService.is_connected){
                                    if(dec.id !=""){
                                        console.log("dec" + dec.id);
                                        bleService.setOption(dec.id , "cmdTimeSetting2", scope.time_select);
                                        showMessage(scope.setting_ok )
                                    }
                                }else{
                                    showMessage(scope.connect_ble )
                                }


                            }
                        };
                        scope.cancel = function () {
                            hide();
                        };

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
