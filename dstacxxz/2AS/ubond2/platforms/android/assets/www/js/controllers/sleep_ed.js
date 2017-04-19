angular.module('ufind1.controllers')
    .controller('sleepCtrl', function ($scope,$state, $timeout, $stateParams, $ionicPopup, $ionicLoading, $translate, dialogsManager, systemService, userService, connectedService, bleService, sleepType, sleepTime, decService) {
        var myChart = echarts.init(document.getElementById('sleephiy'), 'shine');

        $scope.is_connect = connectedService.is_connected;
        $scope.day_text = $translate.instant('day_text');
        $scope.month_text = $translate.instant('month_text');
        $scope.year_text = $translate.instant('year_text');
        $scope.title_text = $translate.instant('title_text');

        var sleep_time2 = sleepTime.all();
        var sleep_type2 = sleepType.all();
//        sleep_type2 = [1,2,3,0,1,2,4,1,2,3,0,1,0,1,0,1,2,3,0,1,2,3,0,1,2,3,0,1,2,1,2,3,0,1,2,4,0,1,2,3,0,1]
//        sleep_time2 =[1451578500000,1451579100000,1451580120000,1451580120000,1451580780000,1451581380000,
//            1451581980000,1489543800000,1489544400000,1489545240000,1489545240000,1489546320000,1489546500000,
//            1489548120000,1489548240000,1489549080000,1489550820000,1489551120000,1489551120000,1489551960000,
//            1489552560000,1489552740000,1489552740000,1489554660000,1489556460000,1489558260000,1489558320000,
//            1489560720000,1489561320000,1489567920000,1489569960000,1489570740000,1489571880000,1489573380000,
//            1489573980000,1489574580000,1489627380000,1489628460000,1489629060000,1489629120000,1489629180000,1489629780000];


        $scope.x_time = [];
        $scope.y_sleep = [];
        //取得图表数据
        var updateData = function () {
            if (sleep_time2.length <= 12 * 60) {
                $scope.x_time = sleep_time2;
                $scope.y_sleep = sleep_type2;
            } else {
                $scope.x_time = sleep_time2.slice(sleep_time2.length - 8 * 60, sleep_time2.length);
                $scope.y_sleep = sleep_type2.slice(sleep_type2.length - 8 * 60, sleep_type2.length);
            }
        }

            //计算拖动条开始位置，结束位置
        var position = function (mycars) {
            console.log("mycars.length  =  "+mycars.length )
            if (mycars.length >= 4 * 60) {
                $scope.start = 90;
                $scope.end = 100;
            }
            else if (mycars.length > 90 & mycars.length <4 * 60) {
                $scope.end = 100;
                $scope.start = $scope.end - 30;
            }
            else if (mycars.length <= 90) {
                $scope.start = 0;
                $scope.end = 100;
            }
        }
        updateData();
        position($scope.x_time);

        //格式化时间//毫秒转化为日期格式
        function formatDate(time) {
            if (time != 0) {
                var oldTime = time; //得到毫秒数
                var newTime = new Date(oldTime)
                var year = newTime.getFullYear()-2000;
                var month = newTime.getMonth() + 1;
                var day = newTime.getDate();
                var hours = newTime.getHours();
                var minutes = newTime.getMinutes();
                return year + '/' + month + '/' + day + ' ' + hours + ':' + minutes;
            } else {
                return 0;
            }
        }
        $scope.y_Array = [];
        $scope.x_Array = [];
        //今天的睡眠类型数据
        $scope.lightSleep = 0;
        $scope.deepSleep = 0;
        $scope.actionSleep = 0;

        function toDayData(time){
            var old_data = new Date(time)
            var old_year = old_data.getFullYear()
            var old_moth = old_data.getMonth()+1
            var old_day = old_data.getDate();

            var today_data = new Date()
            var today = today_data.getDate()   //今天
            var today_year = today_data.getFullYear()
            var today_moth = today_data.getMonth()+1
            if(old_day == today & old_year == today_year & old_moth == today_moth){
                return true;
            }else{
                return false;
            }
        }
        var today_time_array = []  //今天睡眠的时间数组
        var today_type_array = []  //今天睡眠的类型数组
        /*获取今天的数据*/
        function getTodayData(timeArray,typeArray){
            today_time_array = [];
            today_type_array = [];
            for(var i =0; i<timeArray.length; i++){
                if(toDayData(timeArray[i])){
                    today_time_array = today_time_array.concat(timeArray[i])
                    today_type_array = today_type_array.concat(typeArray[i])
                }
            }
        }
        getTodayData($scope.x_time,$scope.y_sleep)

        console.log("today_time_array = " + JSON.stringify(today_time_array) + "   ,today_type_array = " +JSON.stringify(today_type_array))

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

            $scope.actionSleep = (a/1000/60/60).toFixed(2)
            $scope.lightSleep = (b/1000/60/60).toFixed(2)
            $scope.deepSleep = (c/1000/60/60).toFixed(2)

            console.log($scope.actionSleep +'/'+ $scope.lightSleep+'/'+$scope.deepSleep)
        }
        getTypeSleepData(today_time_array,today_type_array)

        //格式化填充图表数据
        var updateEcharts = function () {
            if($scope.y_sleep.length>0){
                for (var i = 0; i < $scope.y_sleep.length; i++) {
                    if($scope.y_sleep[i] <5){
                        $scope.y_Array[i] = $scope.y_sleep[i] ;
                    }else{
                        $scope.y_Array[i] = null;
                    }
//                    $scope.y_Array[i] = $scope.y_sleep[i] ;
                    $scope.x_Array[i] = formatDate($scope.x_time[i])
                }
            }
        }
//        0：清醒状态
//        1：浅睡状态
//        2：深睡状态
//        3：浅睡状态
//        4：未佩戴状态
//        '0：清醒','1：浅睡','2：深睡','3：浅睡','4：未佩戴'
        updateEcharts();
        myChart.showLoading();
        var option = {
            title: {
                text: $scope.title_text,
                left:'center',
                textStyle:{
                    color:'#fff',
                    fontSize:15
                }

            },
            tooltip: {
                trigger: 'axis',
                axisPointer:{
                    animation:false,
                    lineStyle:{
                        width:0
                    }
                }
            },

            grid: {
                show:true,
                top: '10%',
                left: '2%',
                right: '3%',
                backgroundColor:'rgba(4, 157, 214, 1)',
                shadowColor:'rgba(255, 255, 255, 1)',
                containLabel: true
            },

            xAxis: [{
                type: 'category',
                    data:$scope.x_Array,
                    axisLine:{
                        show:false
                    },
                    axisTick:{
                        show:false,
                        inside:false,
                        lineStyle:{
                            color:'rgba(255, 255, 255, 1)'
                        }
                    }
            }],
            yAxis: [{
                type: 'value',
                inverse:true,
                    minInterval: 1,
                    min:0,
                    max:4,
                    axisLine:{
                        show:false
                    },
                    axisTick:{
                        show:false,
                        inside:false
                    },
                    splitLine: {
                        show: false
                    },
                    splitArea: {           // 分隔区域,坑比啊，调试了半天才找到
                        show: false        // 默认不显示，属性show控制显示与否
                    }
            }],
            series: [
                {
//                    name:'Step Start',
                    type:'line',
                    step: 'start',
                    name:  $translate.instant('sleep_text5'),
                    lineStyle:{
                        normal:{
                            color:'rgba(255, 255, 255, 1)'
                        }
                    },
                    itemStyle:{
                        emphasis:{
                            borderWidth:5,
                            borderColor:'rgba(255, 255, 255, 0.8)'
                        },
                        normal:{
                            borderWidth:5,
                            borderColor:'rgba(255, 255, 255, 0.8)'
                        }
                    },
                    data: $scope.y_Array
                }

            ],
            dataZoom: [
                {
                    show: true,
                    start: $scope.start,
                    end: $scope.end,
                    handleSize: 8,
                    zoomLock: true,
                    height: 20,
                    left: '5%',
                    right: '6%',
                    textStyle:{
                        color:'rgba(255, 255, 255, 1)'
                    },
                    borderColor:'rgba(255, 255, 255, 1)',
                    backgroundColor:'rgba(255, 255, 255, 0.2)',
                    fillerColor:'rgba(255, 255, 255, 0.5)'
                },
                {
                    type: 'inside'
                }

            ],
            textStyle:{
                color:'rgba(255, 255, 255, 1)'
            },
            backgroundColor:'rgba(4, 157, 214, 1)'
        }
        myChart.setOption(option);
        myChart.hideLoading();

        function formatDate3(time) {
            if (time !== 0) {
                var oldTime = time; //得到毫秒数
                var newTime = new Date(oldTime)
                var year = newTime.getFullYear();
                var month = newTime.getMonth() + 1;
                var day = newTime.getDate();
                var hours = newTime.getHours();
                var minutes = newTime.getMinutes();
                return [year,month ,day ,hours ,minutes];
            } else {
                return [0,0,0,0,0];
            }
        }
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

        var sleep_type = []; //睡眠类型 0： ，1：浅睡，2 ：深睡
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
                    duration: 100 * 1000
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

                    if($scope.x_time.length>0){
                        var d =  $scope.x_time[$scope.x_time.length-1]
                    }else{
                        var d = 0;
                    }
                    var mRecord = {
                        year:formatDate3(d)[0],
                        month:formatDate3(d)[1],
                        day:formatDate3(d)[2],
                        hours:formatDate3(d)[3],
                        type:0x39
                    }
                    bleService.setOption($scope.deviceId, "cmdNodeRecord", mRecord);
                    $timeout(function () {

                    bleService.dataRefresh($scope.deviceId, "cmdSleepEd").then(function (result) {
                    }, function (result) {
                        $scope.progress(false);
                        $scope.loading(false);
                        $scope.showMessage($scope.refresh_er);
                        connectedService.progress_show = 1;
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
                    }, 2000);
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
        //昨天数据
        $scope.$on('sleep.refresh', function () {
            sleep_time2 = sleepTime.all();
            sleep_type2 = sleepType.all();
            sleep_refresh();
            $scope.progress(false);
            $scope.loading(false);
            connectedService.progress_show = 1;
        });

        function sleep_refresh() {
            updateData();
            position($scope.x_time);
            updateEcharts();

            getTodayData($scope.x_time,$scope.y_sleep);
            getTypeSleepData(today_time_array,today_type_array);
            option.series[0].data = $scope.y_Array;
            option.xAxis[0].data = $scope.x_Array;
            option.dataZoom[0].start = $scope.start;
            option.dataZoom[0].end = $scope.end;
            myChart.setOption(option);
        }
        $scope.goToMain = function(){
            $state.go("main");
        }

});


