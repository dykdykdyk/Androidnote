angular.module('ufind1.controllers')
    .controller('yearSleepCtrl', function ($scope, $state,$timeout, $stateParams,$ionicLoading, $ionicPopup,$translate,systemService,dialogsManager
        ,userService, connectedService,stepService,bleService,sleepType,sleepTime,decService) {

        var myChart = echarts.init(document.getElementById('yearSleep'), 'shine');
        $scope.is_connect = connectedService.is_connected;

        var sleep_time2  = sleepTime.all();
        var sleep_type2 = sleepType.all();
//        sleep_type2 = [1,2,3,0,1,2,4,1,2,3,0,1,0,1,0,1,2,3,0,1,2,3,0,1,2,3,0,1,2,1,2,3,0,1,2,4,0,1,2,3,0,1]
//        sleep_time2 =[1451578500000,1451579100000,1451580120000,1451580120000,1451580780000,1451581380000,
//            1451581980000,1489543800000,1489544400000,1489545240000,1489545240000,1489546320000,1489546500000,
//            1489548120000,1489548240000,1489549080000,1489550820000,1489551120000,1489551120000,1489551960000,
//            1489552560000,1489552740000,1489552740000,1489554660000,1489556460000,1489558260000,1489558320000,
//            1489560720000,1489561320000,1489567920000,1489569960000,1489570740000,1489571880000,1489573380000,
//            1489573980000,1489574580000,1489627380000,1489628460000,1489629060000,1489629120000,1489629180000,1489629780000];

        $scope.day_text = $translate.instant('day_text');
        $scope.month_text = $translate.instant('month_text');
        $scope.year_text = $translate.instant('year_text');
        $scope.year_show = new Date().getFullYear()

        //一天
        function formatDate(time){
            if(time !==0){
                var oldTime = time; //得到毫秒数
                var newTime = new Date(oldTime)
                var year = newTime.getFullYear();
                var month = newTime.getMonth()+1;
                var day = newTime.getDate();
                var hours = newTime.getHours();
                var minutes = newTime.getMinutes();
                var times = year+"-"+month+"-"+day;
                return [year,month,day,times] ;
            }else{
                return 0;
            }
        }
        /*是否 是选择的月份*/
        function yearData(index,time){
            var old_data = new Date(time)
            var old_year = old_data.getFullYear() //某一年

            var today_data = new Date()
            var today_year = today_data.getFullYear() //今年
            var year2 =  index + today_year;
            $scope.year_show = year2;
            if(old_year == year2 ){
                return true;
            }else{
                return false;
            }
        }

        /*获取某个年的数据*/
        var year_time_array = []  //今年睡眠的时间数组
        var year_type_array = []  //今年睡眠的类型数组

        /*获取某个年的数据*/
        function getTodayData(index,timeArray,typeArray){
            year_time_array = [];
            year_type_array = [];
            for(var i =0; i<timeArray.length; i++){
                if(yearData(index,timeArray[i])){
                    year_time_array = year_time_array.concat(timeArray[i])
                    year_type_array = year_type_array.concat(typeArray[i])
                }
            }
        }
        getTodayData(0,sleep_time2,sleep_type2);
        var year_data_count = 0;
        /*获取某个年有数据的天数*/
        function getMonthDay(timeArray){
            var a = []; //存储天的数组
            var b =[];   //去掉重复的天数
            for(var i=0;i<timeArray.length;i++){
                a[i] = formatDate(timeArray[i])[0]+'-'+ formatDate(timeArray[i])[1]+'-' + formatDate(timeArray[i])[2]
            }
            b = unique(a);
            console.log('重复的天数后的天数 = ' + b.length)
            year_data_count = b.length;
        }
        getMonthDay(year_time_array);

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
            if(year_data_count >0){
                $scope.actionSleep = (a/1000/60/60/year_data_count).toFixed(2)
                $scope.lightSleep = (b/1000/60/60/year_data_count).toFixed(2)
                $scope.deepSleep = (c/1000/60/60/year_data_count).toFixed(2)
            }else{
                $scope.actionSleep = 0
                $scope.lightSleep = 0
                $scope.deepSleep = 0
            }
        }
        getTypeSleepData(year_time_array,year_type_array)

        $scope.time_show = $scope.year_show;
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
            title : {
                text: $scope.time_show,
                subtext: $translate.instant('sleep_text1'),
                x:'left',
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
            tooltip : {
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
            series : [
                {
                    name:  $translate.instant('sleep_text5'),
                    type: 'pie',
                    radius : '55%',
                    center: ['50%', '60%'],
                    data:[
                        {value:$scope.actionSleep, name: $translate.instant('actionSleep'),
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
                        {value:$scope.deepSleep, name: $translate.instant('deepSleep'), itemStyle: {
                            normal: {
                                color: 'rgba(255, 255, 255, 0.5)'
                            }
                        }}
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
        function aa (arr2,arr4){
            for (var i =0 ;i<arr4.length;i++){
                if(arr4[i] == arr2[arr2.length-1]){
                    return i+1;
                }
            }
        }
        var sleep_type =[]; //睡眠类型 0：活动，1：浅睡，2：深睡
        function type(ty){
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
        $scope.showMessage= function (text) {
            dialogsManager.showMessage(text);
        }
        /*进度条是否显示*/
        $scope.progress=function(show){
            $scope.isShow = show
            $scope.pro_width = 1
            bleService.request_progress($scope.deviceId,"cmdProgress",'ble').then(function (progress) {
            }, function (progress) {
                $scope.loading(false);
                $scope.isShow = false;
                $scope.showMessage($scope.refresh_er);
            }, function (progress) {
                $scope.pro_width = progress.progress;
            })
        }
        $scope.loading = function(isShow){
            if(isShow){
                $ionicLoading.show({
                    template: '<ion-spinner icon="ios"></ion-spinner>',
                    duration: 90 * 1000
                });
            }else{
                $ionicLoading.hide();
            }
        }
        $scope.onClickRefresh_sleep = function(){
            $scope.is_connect = connectedService.is_connected;
            if($scope.is_connect){
                if (typeof($scope.deviceId) != 'undefined') {
                    $scope.progress(true);
                    $scope.loading(true);
                    bleService.dataRefresh($scope.deviceId, "cmdStepEd").then(function (result) {
                    }, function (result) {
                        $scope.progress(false);
                        $scope.loading(false);
                        $scope.showMessage($scope.refresh_er);
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
                        }else{
                            $scope.$broadcast('sleep.refresh',null);
                        }
                    });
                } else {
                    showPopup();
                }
            }else{
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
        $scope.some_year = 0
        $scope.old_day = function(){
            if($scope.some_year>-5){
                $scope.some_year--;
                sleep_refresh($scope.some_year);
            }
        }
        $scope.next_day = function(){
            if( $scope.some_year<0){
                $scope.some_year++;
                sleep_refresh($scope.some_year);
            }
            console.log("后一年...."+$scope.some_year);
        }
        $scope.$on('sleep.refresh', function () {
            sleep_time2  = sleepTime.all();
            sleep_type2 = sleepType.all();
            sleep_refresh(0);
            $scope.progress(false);
            $scope.loading(false);
        });
        function sleep_refresh(time){

            getTodayData(time,sleep_time2,sleep_type2);
            getMonthDay(year_time_array);
            getTypeSleepData(year_time_array,year_type_array);

            $scope.time_show = $scope.year_show;
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

