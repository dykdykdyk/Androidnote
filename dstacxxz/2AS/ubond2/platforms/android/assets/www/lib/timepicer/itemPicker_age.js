(function () {
    'use strict';
    angular.module('heightpicker_age', [])
        .directive('itemPickerAge', ['$timeout', '$ionicScrollDelegate',
            function ($timeout, $ionicScrollDelegate) {
                return {
                    templateUrl: 'lib/timepicer/itemPicker_age.html',
                    restrict: 'AE',
                    replace: true,
                    scope: {option: '='},
                    link: function (scope, elements, attributes) {
                        scope.itemList = [];
                        scope.monthList = [];
                        scope.itemScrollTimer = null;
                        scope.monthScrollTimer = null; //月份滑动定时器
                        scope.dan_wei = scope.option.dan_wei;
                        scope.dan_wei2 = scope.option.dan_wei2;

                        initYear(scope.option)
                        initMoth(scope.option)

                        function initMoth(options) {
                            var defaultMonth = options.monthSelected;
                            var monthSpan = 30;
                            var text, data, top, item, defaultItem, defaultIndex;
                            prependLi(scope.monthList, 3, "b")
                            for (var i = 0; i < options.monthList.length; i++) {
                                data = options.monthList[i];
                                text = options.monthList[i];
                                top =40 + scope.monthList[scope.monthList.length - 1].top;
                                item = createDateTimeLi(0, top, data, i == scope.option.monthSelected, text);

                                scope.monthList.push(item);
                            }
                            prependLi(scope.monthList, 3, "b")
                        }
                        function initYear(options) {
                            var text, data, top, item, defaultItem, defaultIndex;
                            prependLi(scope.itemList, 3, "b")
                            for (var i = 0; i <= scope.option.itemList.length; i++) {
                                text = scope.option.itemList[i];
                                data = scope.option.itemList[i];
                                top = 40 + scope.itemList[scope.itemList.length - 1].top;
                                item = createDateTimeLi(10, top, data, i == scope.option.itemSelected, text);
                                scope.itemList.push(item);
                            }
                            prependLi(scope.itemList, 3, "e")
                        }
                        $timeout(function () {
                            scope.itemScroll = $ionicScrollDelegate.$getByHandle("yearScroll_3");
                            scope.monthScroll = $ionicScrollDelegate.$getByHandle("yearScroll_4");
                            scrollToElm(scope.itemScroll, scope.itemList[scope.option.itemSelected]);
                            scrollToElm(scope.monthScroll, scope.monthList[scope.option.monthSelected]);
                        });

                        scope.scrollingEvent1 = function (type) {
                            console.log("scrollingEvent1....."+type)
                            scope.itemScrollTimer && $timeout.cancel(scope.itemScrollTimer);

                                    var posi = scope.itemScroll.getScrollPosition();
                                    var index = Math.abs(Math.round(posi.top / 40));
                                    if (posi.top == index * 40) {
                                        updateSelect_item(index);
                                    } else {
                                        scope.itemScrollTimer = $timeout(function () {
                                            posi.top = index * 40;
                                            updateSelect_item(index);
                                            scrollToPosi(scope.itemScroll, posi);
                                        }, 100);
                                    }
                        };
                        scope.scrollingEvent2 = function (type) {
                            console.log("scrollingEvent2....."+type)
                            scope.monthScrollTimer && $timeout.cancel(scope.monthScrollTimer);
                                    var posi = scope.monthScroll.getScrollPosition();
                                    var index = Math.abs(Math.round(posi.top / 40));
                                    if (posi.top == index * 40) {
                                        updateSelect_month(index);
                                    } else {
                                        scope.monthScrollTimer = $timeout(function () {
                                            posi.top = index * 40;
                                            updateSelect_month(index);
                                            scrollToPosi(scope.monthScroll, posi);
                                        }, 100);
                                    }
                        };
                        function updateSelect(index, type) {
                            console.log("index"+index +" type"+type );
                            switch (type) {
                                case "year":
                                    //强制
                                    $timeout(function () {
                                        scope.itemList[scope.option.itemSelected + 3].selected = false;
                                        scope.itemList[index].selected = true;
                                        scope.option.itemSelected = index;

//                                        scope.selectDateTime.year.item.selected = false;
//                                        scope.yearList[index].selected = true;
//                                        scope.selectDateTime.year.item = scope.yearList[index];
//                                        scope.selectDateTime.year.index = index;
                                    });
                                    break;
                                case "month":
                                    //强制
                                    $timeout(function () {
                                        scope.monthList[scope.option.monthSelected + 3].selected = false;
                                        scope.monthList[index].selected = true;
                                        scope.option.monthSelected = index;

//                                        scope.selectDateTime.month.item.selected = false;
//                                        scope.monthList[index].selected = true;
//                                        scope.selectDateTime.month.item = scope.monthList[index];
//                                        scope.selectDateTime.month.index = index;
                                    });
                                    break;
                            }
                        }
                        function updateSelect_item(index) {
                            $timeout(function () {
                                scope.itemList[scope.option.itemSelected + 3].selected = false;
                                scope.itemList[index + 3].selected = true;
                                scope.option.itemSelected = index;
                            });
                        }
                        function updateSelect_month(index) {
                            $timeout(function () {
                                scope.monthList[scope.option.monthSelected + 3].selected = false;
                                scope.monthList[index + 3].selected = true;
                                scope.option.monthSelected = index;
                            });
                        }

                        scope.selectEvent1 = function (index) {
                            if (index > 2 && index <= scope.itemList.length - 3) {

                                updateSelect_item(index - 3);
                                scrollToElm(scope.itemScroll, scope.itemList[index - 3]);
//                                scope.option.itemSelected = index - 3;
                            }
                           };
                        scope.selectEvent2 = function (index) {
                            if (index > 2 && index <= scope.monthList.length - 3) {

                                updateSelect_month(index - 3);
                                scrollToElm(scope.monthScroll, scope.monthList[index - 3]);
//                                scope.option.itemSelected = index - 3;
                            }
                           };
                        function getOperateEntity(type) {
                            var entity = new Object();
                            var scrollTimer, scrollHandler, data, defaultSelected, selectedItem;
                            switch (type) {
                                case "item":
                                    entity.scrollTimer = scope.itemScrollTimer;
                                    entity.type = type;
                                    entity.scrollHandler = scope.itemScroll;
                                    entity.data = scope.itemList;
                                    entity.defaultSelected = scope.option.itemSelected;
                                    entity.selectedItem = "year";
                                    break;
                                case "month":
                                    entity.scrollTimer = scope.monthScrollTimer;
                                    entity.type = type;
                                    entity.scrollHandler = scope.monthScroll;
                                    entity.data = scope.monthList;
                                    entity.defaultSelected = scope.option.monthScroll;
                                    entity.selectedItem = "month";
                                    break;
                            }
                            return entity;
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
                                        arr.push(createDateTimeLi(0, 40 * i, "", false, ""));
                                    }
                                    break;
                                case "e":
                                    var lastPosiTop = arr[arr.length - 1].top;
                                    for (var j = 0; j < num; j++) {
                                        arr.push(createDateTimeLi(0, (40 * (i + 1) + lastPosiTop), "", false, ""));
                                    }
                                    break;
                            }
                        }

                        function scrollToElm(scorllHandler, elements) {
                            scorllHandler.scrollTo(elements.left, elements.top, true);
                        }

                        function scrollToPosi(scorllHandler, posi) {
                            scorllHandler.scrollTo(posi.left, posi.top, true);
                        }
                    }
                }
            }
        ]);
})(window, document);
