angular.module('ufind1.controllers')
    .controller('mothSleepCtrl', function ($scope, $state, $timeout, $stateParams, $ionicLoading, $ionicPopup, $translate, systemService, dialogsManager, userService, connectedService, stepService, bleService, sleepType, sleepTime, decService) {

        var myChart = echarts.init(document.getElementById('mothSleep'), 'shine');
        $scope.is_connect = connectedService.is_connected;

        var sleep_time2 = sleepTime.all();
        var sleep_type2 = sleepType.all();

        $scope.day_text = $translate.instant('day_text');
        $scope.month_text = $translate.instant('month_text');
        $scope.year_text = $translate.instant('year_text');
        $scope.year_show = new Date().getFullYear();
        $scope.month_show = new Date().getMonth()+1;

        //一天
        function formatDate(time) {
            if (time !== 0) {
                var oldTime = time; //得到毫秒数
                var newTime = new Date(oldTime)
                var year = newTime.getFullYear();
                var month = newTime.getMonth() + 1;
                var day = newTime.getDate();
                var hours = newTime.getHours();
                var minutes = newTime.getMinutes();
                return [year, month, day];
            } else {
                return 0;
            }
        }
        /*是否 是选择的月份*/
        function monthData(index,time){
            var old_data = new Date(time)
            var old_year = old_data.getFullYear()
            var old_moth = old_data.getMonth()+1
            var old_day = old_data.getDate();

            var today_data = new Date()
            var today = today_data.getDate()   //今天
            var today_year = today_data.getFullYear()
            var today_moth = today_data.getMonth()+1
            var month2 =  index + today_moth;
            if (month2 <= 0) {
                today_year = today_year - 1;
                month2 = month2 + 12;
            }

            $scope.year_show = today_year;
            $scope.month_show = month2;
            if(old_year == today_year & old_moth == month2){
                return true;
            }else{
                return false;
            }
        }

        /*获取某个月的数据*/
        var month_time_array = []  //本月睡眠的时间数组
        var month_type_array = []  //本月睡眠的类型数组
        /*获取某个月的数据*/
        function getTodayData(index,timeArray,typeArray){
            month_time_array = [];
            month_type_array = [];
            for(var i =0; i<timeArray.length; i++){
                if(monthData(index,timeArray[i])){
                    month_time_array = month_time_array.concat(timeArray[i])
                    month_type_array = month_type_array.concat(typeArray[i])
                }
            }
        }
        getTodayData(0,sleep_time2,sleep_type2);

        var month_data_count = 0;
        /*获取某个月有数据的天数*/
        function getMonthDay(timeArray){
            var a = []; //存储天的数组
            var b =[];   //去掉重复的天数
            for(var i=0;i<timeArray.length;i++){
                a[i] = formatDate(timeArray[i])[2]
            }
            b = unique(a);
            console.log('重复的天数后的天数 = ' + b.length)
            month_data_count = b.length;
        }
        getMonthDay(month_time_array);

        /*计算浅睡时间，深睡时间，活跃时间*/
        function getTypeSleepData(timeArray,typeArray){
            var a= 0 , b= 0 , c= 0 , d= 0        //活跃时间,浅睡时间，深睡时间，未佩戴时间的毫秒数
            for(var i =0;i<typeArray.length;i++){
                if(i <typeArray.length-1 ){
                    if(typeArray[i] == 0){
                        a = a + (timeArray[i+1] - timeArray[i])
                    }else if(typeArray[i] == 1){
                        b = b + (timeArray[i+1] - timeArray[i])
                    }else if(typeArray[i] == 2){
                        c = c + (timeArray[i+1] - timeArray[i])
                    }else if(typeArray[i] == 3){
                        b = b + (timeArray[i+1] - timeArray[i])
                    }else if(typeArray[i] == 4){
                        d = d + (timeArray[i+1] - timeArray[i])
                    }
                }
            }
            if(month_data_count >0){
                $scope.actionSleep = (a/1000/60/60/month_data_count).toFixed(2)
                $scope.lightSleep = (b/1000/60/60/month_data_count).toFixed(2)
                $scope.deepSleep = (c/1000/60/60/month_data_count).toFixed(2)
            }else{
                $scope.actionSleep = 0
                $scope.lightSleep = 0
                $scope.deepSleep = 0
            }
        }
        getTypeSleepData(month_time_array,month_type_array)


        $scope.time_show = $scope.year_show + "/" + $scope.month_show;
        //去掉重复的天数
        function unique(arr) {
            var result = [], hash = {};
            for (var i = 0, elem; (elem = arr[i]) != null; i++) {
                if (!hash[elem]) {
                    result.push(elem);
                    hash[elem] = true;
                }
            }
            return result;
        }

        myChart.showLoading();
        var option = {
            title: {
                text: $scope.time_show,
                subtext: $translate.instant('sleep_text1'),
                x: 'left',
                padding: [
                    5,  // 上
                    10, // 右
                    5,  // 下
                    20 // 左
                ],
                textStyle: {
                    color: 'rgba(255, 255, 255, 1)'
                },
                subtextStyle: {
                    color: 'rgba(255, 255, 255, 1)'
                }
            },
            tooltip: {
                trigger: 'item',
                formatter: "{a} <br/>{b} : {c} ({d}%)"
            },
            legend: {
                orient: 'vertical',
                left: 'right',
                data: [ $translate.instant('actionSleep'), $translate.instant('lightSleep'), $translate.instant('deepSleep')],
                padding: [
                    5,  // 上
                    10, // 右
                    5,  // 下
                    20 // 左
                ],
                textStyle: {
                    color: 'rgba(255, 255, 255, 1)'
                }
            },
            series: [
                {
                    name: $translate.instant('sleep_text5'),
                    type: 'pie',
                    radius: '55%',
                    center: ['50%', '60%'],
                    data: [
                        {value: $scope.actionSleep, name: $translate.instant('actionSleep'),
                            itemStyle: {
                                normal: {
                                    color: 'rgba(255, 255, 255, 0.9)'
                                }
                            }},
                        {value: $scope.lightSleep, name: $translate.instant('lightSleep'), itemStyle: {
                            normal: {
                                color: 'rgba(255, 255, 255, 0.7)'
                            }
                        }},
                        {value: $scope.deepSleep, name: $translate.instant('deepSleep'), itemStyle: {
                            normal: {
                                color: 'rgba(255, 255, 255, 0.5)'
                            }
                        }}
//                        {value:$scope.actionSleep, name: $translate.instant('sleep_text2')},
//                        {value: $scope.lightSleep, name: $translate.instant('sleep_text3')},
//                        {value:$scope.deepSleep, name: $translate.instant('sleep_text4')}
                    ],
                    itemStyle: {
                        emphasis: {
                            shadowBlur: 10,
                            shadowOffsetX: 0,
                            shadowColor: 'rgba(0, 0, 0, 0.5)'
                        }
                    }
                }
            ],
            textStyle: {
                color: 'rgba(255, 255, 255, 1)'
            },
            backgroundColor: 'rgba(4, 157, 214, 1)'
        };
        myChart.setOption(option);
        myChart.hideLoading();
        var device = decService.all();

        if (typeof(device) != 'undefined') {
            $scope.deviceId = device.id; //蓝牙id
        }
        function aa(arr2, arr4) {
            for (var i = 0; i < arr4.length; i++) {
                if (arr4[i] == arr2[arr2.length - 1]) {
                    return i + 1;
                }
            }
        }

        var sleep_type = []; //睡眠类型 0：活动，1：浅睡，2：深睡
        function type(ty) {
            sleep_type = []; //睡眠类型 0：活动，1：浅睡，2：深睡
            for (var t = 0; t < ty.length; t++) {
                if (ty[t] < 5) {
                    sleep_type[t] = ty[t];
                } else {
                    sleep_type[t] = 0;
                }
            }
        }

        //进度条
        $scope.isShow = false;
        $scope.pro_width = 1;
        $scope.refresh_er = $translate.instant('refresh_er');
        $scope.showMessage = function (text) {
            dialogsManager.showMessage(text);
        }
        $scope.progress = function (show) {
            $scope.isShow = show
            $scope.pro_width = 1
            bleService.request_progress($scope.deviceId, "cmdProgress", 'ble').then(function (progress) {
            }, function (progress) {
                $scope.loading(false);
                $scope.isShow = false;
                $scope.showMessage($scope.refresh_er);
            }, function (progress) {
                $scope.pro_width = progress.progress;
            })
        }
        $scope.loading = function (isShow) {
            if (isShow) {
                $ionicLoading.show({
                    template: '<ion-spinner icon="ios"></ion-spinner>',
                    duration: 90 * 1000
                });
            } else {
                $ionicLoading.hide();
            }
        }
        $scope.onClickRefresh_sleep = function () {
            $scope.is_connect = connectedService.is_connected;
            if ($scope.is_connect) {
                if (typeof($scope.deviceId) != 'undefined') {
                    $scope.progress(true);
                    $scope.loading(true);
                    bleService.dataRefresh($scope.deviceId, "cmdSleepEd").then(function (result) {
                    }, function (result) {
                        $scope.showMessage($scope.refresh_er);
                        $scope.progress(false);
                        $scope.loading(false);
                    }, function (result) {
                        var a2 = result.sleepArray;
                        var b2 = result.sleepTimeArray;
                        var xx = sleep_time2;
                        if (b2 && b2.length > 0) {
                            var a = [];
                            var b = [];
                            if (sleep_time2.length > 0) {
                                var xo = xx[sleep_time2.length - 1];
                            } else {
                                var xo = 0;
                            }
                            var bo = 0;
                            for (var y = 0; y < b2.length; y++) {
                                if (xo <= b2[y]) {
                                    xo = b2[y];
                                    bo = a2[y];
                                    b = b.concat(xo);
                                    a = a.concat(bo);
                                }
                            }
                            var ii = aa(xx, b);
                            if (typeof(ii) == 'undefined') {
                                type(a);
                                sleepTime.add(b);
                                sleepType.add(sleep_type);
                                sleepTime.serialize();
                                sleepType.serialize();
                                $scope.$broadcast('sleep.refresh', null);
                            } else {
                                type(a);
                                var slt = sleep_type.slice(ii);
                                var sle = b.slice(ii);
                                sleepTime.add(sle);
                                sleepType.add(slt);

                                sleepTime.serialize();
                                sleepType.serialize();
                                $scope.$broadcast('sleep.refresh', null);
                            }
                        } else {
                            $scope.$broadcast('sleep.refresh', null);

                        }
                    });
                } else {
                    showPopup();
                }
            } else {
                showPopup();
            }
        }

        var showPopup = function () {
            // 自定义弹窗
            var myPopup = $ionicPopup.show({
                title: $translate.instant('step_text2'),
                subTitle: $translate.instant('step_text3')
            });
            myPopup.then(function (res) {
            });
            $timeout(function () {
                myPopup.close(); // 3秒后关闭弹窗
            }, 1000);
        };
        $scope.some_month = 0
        $scope.old_day = function () {
            if ($scope.some_month > -13) {
                $scope.some_month--;
                sleep_refresh($scope.some_month);
            }
        }
        $scope.next_day = function () {
            if ($scope.some_month < 0) {
                $scope.some_month++;
                sleep_refresh($scope.some_month);
            }

        }

        //今天数据
        $scope.$on('sleep.refresh', function () {
            sleep_time2 = sleepTime.all();
            sleep_type2 = sleepType.all();
            sleep_refresh(0);
            $scope.progress(false);
            $scope.loading(false);
        });
        function sleep_refresh(time) {

            getTodayData(time,sleep_time2,sleep_type2);
            getMonthDay(month_time_array);
            getTypeSleepData(month_time_array,month_type_array)

            $scope.time_show = $scope.year_show + "/" + $scope.month_show;
            option.title.text = $scope.time_show;
            option.series[0].data[0].value = $scope.actionSleep;
            option.series[0].data[1].value = $scope.lightSleep;
            option.series[0].data[2].value = $scope.deepSleep;
            myChart.setOption(option);
        }

        $scope.goToMain = function () {
            $state.go("main");
        }
    });



