(function () {
    /*
     coder yuan 嘻嘻……   
     */
    'use strict';
    angular.module('CoderYuan', [])
        .service('timePickerService', function () {
            var _this = this;
            //页面中选择器数量 default : 0
            _this.globalId = 0;
            return _this;
        })
        /*日期时间选择*/
        .directive('timePicker', [
            '$timeout',
            '$compile', '$ionicScrollDelegate', '$ionicBackdrop', '$q', '$translate','timePickerService', 'userService', 'userDateService',
            function ($timeout, $compile, $ionicScrollDelegate, $ionicBackdrop, $q, $translate,timePickerService, userService) {
                return {
                    template: '<div class="time_picker"><div class="imgStyleSmall"><img src="{{imagePath}}"></div>  <span class="item-text"> {{options.title}}</span>{{selectDateTime.show}}   <i class="icon ion-chevron-right icon-accessory"></i></div>',
                    restrict: 'AE',
                    replace: true,
                    scope: {
                        options: '=' //双向绑定
//                        timePickerResult: '=' //双向绑定
//                        loadDateTime: '=' // 用于从服务端加载(或其他方式加载时间,反正是延迟的就对了) 初始 时间日期数值  //要配合options 中的loadLazy 属性使用  如果默认时间是从服务端加载回来的
                        //要做如下设置  <time-picker  load-date-time="data.dateTime" loadLazy="true" time-picker-result="result"></time-picker>
                        //即 loadLazy 设置为true(默认是false)标识时间数据延迟加载  data.dateTime 是从服务端加载回来的时间数据
                    },
                    link: function (scope, elm, attrs){//作业域， 元素（标签）， 属性（标签里的属性）
                        $timeout(function(){

                                var user_date = userService.all();
                                scope.age_tex = $translate.instant('age_tex');
                                scope.cancel1 = $translate.instant('cancel');
                                scope.save = $translate.instant('ok');
                                scope.imagePath = scope.options.image_path;
//                        scope.cm = $translate.instant('cm');
//                        console.log(JSON.stringify(scope.options))

                                var globalId = ++timePickerService.globalId;
                                var tem = "<div class='pickerContainer datetimeactive'>" +
                                    "<div class='main'>" +
                                    "<div  class='header'>{{options.title}}</div>"
                                    + "<div class='body'>"
                                    + "<div class='row row-no-padding'>" +
                                    "<div class='col'  ng-if='!options.hideYear' ><ion-scroll  on-scroll='scrollingEvent(\"year\")' delegate-handle='yearScroll_" + globalId + "' scrollbar-y='false' class='yearContent'>" + "<ul>" + "<li ng-style='year.selected ? { color: \"#0081b8\",fontWeight: \"bold\", fontSize: \"1.2em\"}:{}' ng-click='selectEvent(\"year\",$index)'  ng-repeat='year in yearList'>{{year.text}}</li>" + "</ul>" + "</ion-scroll></div>" +
                                    "<div class='col'  ng-if='!options.hideMoth' ><ion-scroll  on-scroll='scrollingEvent(\"month\")' delegate-handle='monthScroll_" + globalId + "' scrollbar-y='false' class='monthContent'>" + "<ul>" + "<li ng-style='month.selected ? { color: \"#0081b8\",fontWeight: \"bold\", fontSize: \"1.2em\"}:{}'  ng-click='selectEvent(\"month\",$index)'  ng-repeat='month in monthList'>{{month.text}}</li>" + "</ul>" + "</ion-scroll></div>" +
                                    "</div>"
                                    + "<div class='body_center_highlight'></div>" +
                                    "</div>" +
                                    "<div class='footer'>" +
                                    "<span ng-click='ok()'>{{save}}</span><span ng-click='cancel()'>{{cancel1}}</span>" +
                                    "</div>" +
                                    "</div>" +
                                    "</div>";
                                scope.yearScrollTimer = null; //年份滑动定时器
                                scope.monthScrollTimer = null; //月份滑动定时器
                                scope.yearList = [];
                                scope.monthList = [];
                                scope.selectDateTime = {
                                    year: {item: null, index: 0},
                                    month: {item: null, index: 0},
                                    show: ""
                                };
//                        console.log("scope.options.." +JSON.stringify(scope.options));
                                init(scope.options);
                                elm.on("click", function () {
                                    show();
                                    scrollToElm(scope.yearScroll, scope.yearList[scope.selectDateTime.year.index - 3]);
                                    scrollToElm(scope.monthScroll, scope.monthList[scope.selectDateTime.month.index - 3]);
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
                                    tem = angular.element(tem);
                                    $compile(tem)(scope);
                                    angular.element(document.body).append(tem);
                                    scope.yearScroll = $ionicScrollDelegate.$getByHandle("yearScroll_" + globalId);
                                    scope.monthScroll = $ionicScrollDelegate.$getByHandle("monthScroll_" + globalId);
                                    setSelectDateTimeShow();
                                }
                                //年份初始化
                                function initYear(options) {
                                    var defaultYear = options.yearSelected; //默认选择
                                    var text, data, top, item, defaultItem, defaultIndex;
                                    prependLi(scope.yearList, 3, "b")
                                    for (var i = 0; i < options.yearList.length; i++) {
                                        text = options.yearList[i];     //显示的值
                                        data = options.yearList[i];     //数据
                                        top = options.height + scope.yearList[scope.yearList.length - 1].top;
                                        item = createDateTimeLi(0, top, data, i == defaultYear, text); //(left, top, data, selected, text)
                                        if (i == defaultYear) {
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
                                    var defaultMonth = options.monthSelected;
                                    var monthSpan = 30;
                                    var text, data, top, item, defaultItem, defaultIndex;
                                    prependLi(scope.monthList, 3, "b")
                                    for (var i = 0; i <options.monthList.length; i++) {
                                        data = options.monthList[i];
                                        text = options.monthList[i] ;
                                        top = options.height + scope.monthList[scope.monthList.length - 1].top;
                                        item = createDateTimeLi(0, top, data, i == defaultMonth, text);
                                        if (i == defaultMonth) {
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
                                                arr.push(createDateTimeLi(0, scope.options.height * i, "", false, ""));
                                            }
                                            break;
                                        case "e":
                                            //最后那个li元素的 top
                                            var lastPosiTop = arr[arr.length - 1].top;
                                            for (var j = 0; j < num; j++) {
                                                arr.push(createDateTimeLi(0, (scope.options.height * (i + 1) + lastPosiTop), "", false, ""));
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
                                            });
                                            break;
                                        case "month":
                                            //强制
                                            $timeout(function () {
                                                scope.selectDateTime.month.item.selected = false;
                                                scope.monthList[index].selected = true;
                                                scope.selectDateTime.month.item = scope.monthList[index];
                                                scope.selectDateTime.month.index = index;
                                            });
                                            break;
                                    }
                                }

                                //选中时间展示
                                function setSelectDateTimeShow() {
                                    var month_en = ["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"];
                                    var yearTxt = scope.selectDateTime.year.item.text;
                                    var monthTxt = scope.selectDateTime.month.item.text;
                                    console.log("monthTxt----"+monthTxt);
                                    scope.options.yearSelected = yearTxt;  //默认选中数据
                                    scope.options.monthSelected = monthTxt;   //默认选中数据
                                    var m = "m";
                                    var monthTxt2 = monthTxt+"";
                                    var bool = monthTxt2.indexOf(m) ;
                                    console.log("bool----"+bool);
                                    if(bool>0){
                                        var value = monthTxt.replace(/[^0-9]/ig,"");
                                        var value2 = yearTxt.replace(/[^0-9]/ig,"");
                                        console.log("monthTxt 11----"+value);
                                        scope.selectDateTime.show =  (scope.options.hideMoth ? "" : month_en[value-1]+ " ")+(scope.options.hideYear ? "" : value2) ;
                                    }else{
                                        scope.selectDateTime.show = (scope.options.hideYear ? "" : yearTxt + " " ) + (scope.options.hideMoth ? "" : monthTxt);
                                    }

                                }
                                function getOperateEntity(type) {
                                    var entity = new Object();
                                    var scrollTimer, scrollHandler, data, defaultSelected, selectedItem;
                                    switch (type) {
                                        case "year":
                                            entity.scrollTimer = "yearScrollTimer";
//                                    entity.scrollTimer_updated = false;
                                            entity.type = type;
                                            entity.scrollHandler = "yearScroll";
                                            entity.data = "yearList";
                                            entity.defaultSelected = scope.selectDateTime.year.item.data;
                                            entity.selectedItem = "year";
                                            break;
                                        case "month":
                                            entity.scrollTimer = "monthScrollTimer";
//                                    entity.scrollTimer_updated = false;
                                            entity.type = type;
                                            entity.scrollHandler = "monthScroll";
                                            entity.data = "monthList";
                                            entity.defaultSelected = scope.selectDateTime.month.item.data;
                                            entity.selectedItem = "month";
                                            break;
                                    }
                                    return entity;
                                }

                                scope.ok = function () {
                                    setSelectDateTimeShow();
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

                        },40)
                    }

                }
            }
        ])
})(window, document);
