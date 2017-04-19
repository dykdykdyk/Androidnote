(function () {
    'use strict';
    angular.module('heightpicker', [])
        .directive('itemPicker', ['$timeout', '$ionicScrollDelegate',
            function ($timeout, $ionicScrollDelegate) {
                return {
                    templateUrl: 'lib/timepicer/itemPicker.html',
                    restrict: 'AE',
                    replace: true,
                    scope: {option: '='},
                    link: function (scope, elements, attributes) {
                        scope.itemList = [];
                        scope.itemScrollTimer = null;
                        scope.dan_wei = scope.option.dan_wei;
                        var text, data, top, item, defaultItem, defaultIndex;
                        prependLi(scope.itemList, 3, "b")
                        for (var i = 0; i <= scope.option.itemList.length; i++) {
                            text = scope.option.itemList[i];
                            data = scope.option.itemList[i];
                            top = 40 + scope.itemList[scope.itemList.length - 1].top;
                            item = createDateTimeLi(0, top, data, i == scope.option.itemSelected, text);
                            scope.itemList.push(item);
                        }
                        prependLi(scope.itemList, 3, "e")

                        $timeout(function () {
                            scope.itemScroll = $ionicScrollDelegate.$getByHandle("yearScroll_0");
//                            console.log("scope.itemScroll--"+JSON.stringify( scope.itemScroll.left));

                            scrollToElm(scope.itemScroll, scope.itemList[scope.option.itemSelected]);
                        });

                        scope.scrollingEvent = function (type) {
//                            console.log("scrollingEvent....."+type)
                            scope.itemScrollTimer && $timeout.cancel(scope.itemScrollTimer);

                            var posi = scope.itemScroll.getScrollPosition();
                            var index = Math.abs(Math.round(posi.top / 40));
                            if (posi.top == index * 40) {
                                updateSelect(index);
                            } else {
                                scope.itemScrollTimer = $timeout(function () {
                                    posi.top = index * 40;
                                    updateSelect(index);
                                    scrollToPosi(scope.itemScroll, posi);
                                }, 100);
                            }
                        };

                        function updateSelect(index) {
                            $timeout(function () {
                                scope.itemList[scope.option.itemSelected + 3].selected = false;
                                scope.itemList[index + 3].selected = true;
                                scope.option.itemSelected = index;
                            });
                        }

                        scope.selectEvent = function (type, index) {
                            if (index > 2 && index <= scope.itemList.length - 3) {

                                updateSelect(index - 3);
                                scrollToElm(scope.itemScroll, scope.itemList[index - 3]);
//                                scope.option.itemSelected = index - 3;
                            }
                        };

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
