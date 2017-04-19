angular.module('ufind1.controllers')
    .controller('sportCtrl1', function ($scope, $state, $timeout, $stateParams, $ionicPopup, $translate,$ionicLoading, systemService,dialogsManager, userService, connectedService, stepService, bleService,decService) {
        var myChart = echarts.init(document.getElementById('main2'), 'shine');
        $scope.is_connect = connectedService.is_connected;

        var step = stepService.allStep();
        var stepData = stepService.allData();
//        var step = [69,70,60,62,64,363,68,60,61,62,70,60,61,162,70,260,60,66,65,61,61,61,68,61,61,62,66,157,69,70,60,62,64,63,68,60,61,62,70,60,61,62,70,60,60,66,65,61,61,61,68,61,61,62,66,57];
//        var stepData =[1451577600000,1473731100000,1473732000000,1473732900000,1473733800000,1473734700000,1473735600000,1473736500000,1473737400000,1473738300000,1473739200000,1473740100000,1473741000000,1473741900000,1473742800000,1473743700000,1473744600000,1473745500000,1473746400000,1473747300000,1473748200000,1473749100000,1473750000000,1473750900000,1473751800000,1473752700000,1473753600000,1473754500000,1451577600000,1473731100000,1473732000000,1473732900000,1473733800000,1473734700000,1473735600000,1473736500000,1473737400000,1473738300000,1473739200000,1473740100000,1473741000000,1473741900000,1473742800000,1473743700000,1473744600000,1473745500000,1473746400000,1473747300000,1473748200000,1473749100000,1473750000000,1473750900000,1473751800000,1473752700000,1473753600000,1473754500000];
        $scope.day_text = $translate.instant('day_text');
        $scope.month_text = $translate.instant('month_text');
        $scope.year_text = $translate.instant('year_text');
        $scope.refresh_er = $translate.instant('refresh_er');
        $scope.data = "2016/9"
        //取得图表数据
        var updateData = function () {
            if (stepData.length <= 96 * 7) {
                $scope.x_time = stepData;
                $scope.y_step = step;
            } else {
                $scope.y_step = step.slice(step.length - 96 * 7, step.length);
                $scope.x_time = stepData.slice(stepData.length - 96 * 7, stepData.length);
            }
        }
        updateData();
        console.log("$scope.y_step--------->" + $scope.y_step.length);
        //开始位置，结束位置
        var position = function (mycars) {
//            console.log("mycars--------->" + mycars.length);
            if (mycars.length >= 96 * 7) {
                $scope.start = 85;
                $scope.end = 100;
                console.log(" $scope.start 0--->" + $scope.start + "  $scope.end  0--->" + $scope.end);
            } else if (mycars.length > 96 & mycars.length < 96 * 7) {
                $scope.end = Math.round(mycars.length / (96 * 7) * 100);
                $scope.start = $scope.end - 15;
                console.log(" $scope.start 1--->" + $scope.start + "  $scope.end  1--->" + $scope.end);
            } else if (mycars.length <= 96) {
                $scope.start = 0;
                $scope.end = 15;
                console.log(" $scope.start 2--->" + $scope.start + "  $scope.end  2--->" + $scope.end);
            }
        }
        position($scope.x_time);

        $scope.stepArray = [];
        $scope.timeArray = [];
        $scope.dateArray = [];
        //格式化时间//毫秒转化为日期格式
        function formatDate(time) {
            if (time !== 0) {
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
        function formatDate3(time) {
            if (time !== 0) {
                var oldTime = time; //得到毫秒数
                var newTime = new Date(oldTime)
                var year = newTime.getFullYear();
                var month = newTime.getMonth() + 1;
                var day = newTime.getDate();
                var hours = newTime.getHours();
                return [year, month, day, hours];
            } else {
                return [0,0,0,0];
            }
        }
        console.log("$scope.x_time.length...."+$scope.x_time.length)
        if($scope.x_time.length>0){
            $scope.start_date = formatDate($scope.x_time[0]);
            $scope.end_date = formatDate($scope.x_time[$scope.x_time.length-1]);
        }else{
            $scope.start_date = 0;
            $scope.end_date = 0;
        }

        //填充图表数据
        var updateEcharts = function () {
            for (var i = 0; i < 96 * 7; i++) {
                if (i < $scope.y_step.length) {
                    $scope.stepArray[i] = $scope.y_step[i];
                    $scope.timeArray[i] = formatDate($scope.x_time[i])
                } else {
                    $scope.stepArray[i] = 0;
                    $scope.timeArray[i] = "";
                }
            }
        }
        updateEcharts();

        myChart.showLoading();
        var option = {
            tooltip: {
//                trigger: 'item',
                trigger: 'axis',
                axisPointer:{
                    animation:false,
                    lineStyle:{
                        width:0
                    }
                }
            },
            calculable: true,
            grid: {
                show:true,
                top: '10%',
                left: '2%',
                right: '3%',
                backgroundColor:'rgba(4, 157, 214, 1)',
                shadowColor:'rgba(255, 255, 255, 1)',
                containLabel: true
            },
            xAxis: [
                {
                    type: 'category',
                    data: $scope.timeArray,
                    splitNumber:10,
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
                }
            ],
            yAxis: [
                {
                    type: 'value',
                    name: $translate.instant(''),
                    min: 0,
                    minInterval: 10,
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
                    splitArea: {           // 分隔区域
                        show: false        // 默认不显示，属性show控制显示与否
                    }
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
                    type: 'inside',
                    handleSize: 8
                }
            ],
            series: [
                {
                    name: $translate.instant('step_text1'),
                    type: 'bar',
                    itemStyle:{
                        emphasis:{
                            color:'rgba(255, 255, 255, 1)'
                        },
                        normal:{
                            color:'rgba(255, 255, 255, 0.7)'
                        }
                    },
                    data: $scope.stepArray
                }
            ],
            textStyle:{
                color:'rgba(255, 255, 255, 1)'
            },
            backgroundColor:'rgba(4, 157, 214, 1)'

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
        var step_action = []; // 有效步数；
        function type(ty) {
            sleep_type = []; //睡眠类型 0：活动，1：浅睡，2：深睡
            step_action = []; // 有效步数；
            for (var t = 0; t < ty.length; t++) {
                if(ty[t] >4) {
                    step_action[t] = ty[t];
                    sleep_type[t] = 0;
                }else if(ty[t]==1){
                    step_action[t] =0;
                    sleep_type[t] = 1;
                }else {
                    step_action[t] = 0;
                    sleep_type[t] = 2;
                }
            }
        }
        //进度条

         $scope.isShow = false;
         $scope.pro_width = 1;

        $scope.showMessage= function (text) {
            dialogsManager.showMessage(text);
        }
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
                    duration: 100 * 1000
                });
            }else{
                $ionicLoading.hide();
            }
        }
        $scope.onClickRefresh_step = function () {
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
                        type:0x32
                    }
                    bleService.setOption($scope.deviceId, "cmdNodeRecord", mRecord);
                    $timeout(function () {
                      bleService.dataRefresh($scope.deviceId, "cmdStepEd").then(function (result) {
                        $scope.progress(false);
                      }, function (result) {
                        $scope.loading(false);
                        $scope.progress(false);
                        $scope.showMessage($scope.refresh_er);
                      }, function (result) {
//                        console.log("历史步数result----->" + JSON.stringify(result.stepArray));
//                        console.log("历史步数result----->" + result.stepArray.length);
                        var b2 = [];
                        var a2 = [];
                         a2 = result.stepArray;
                         b2 = result.timeArray;
                        var xx = stepData;
                        if (b2 && b2.length>0) {
                            var a = [];
                            var b = [];
                            if(stepData.length>0){
                                var xo = xx[stepData.length-1];
                            }else{
                                var xo = 0;
                            }
                            var bo = 0;
                            for (var y = 0; y < b2.length; y++) {
                                if (xo < b2[y]) {
                                    xo = b2[y];
                                    bo = a2[y];
                                    b = b.concat(xo);
                                    a = a.concat(bo);
                                }
                            }
                            var ii = aa(xx, b);
                            console.log("ii----->" + ii);
                            if (typeof(ii) == 'undefined') {
                                type(a);
                                stepService.addStep(step_action)
                                stepService.addData(b)
                                stepService.serializeStep();
                                stepService.serializeData();
                                $scope.$broadcast('step_ed.refresh', null);

                            } else {
                                type(a);
                                var st = step_action.slice(ii);
                                var sd = b.slice(ii);
                                stepService.addStep(st);
                                stepService.addData(sd);
                                stepService.serializeStep();
                                stepService.serializeData();
                                $scope.$broadcast('step_ed.refresh', null);
                            }
                        } else {
                            $scope.$broadcast('step_ed.refresh', null);
                        }
                    });
                    }, 2000);
                } else {
//                $scope.$broadcast('step_ed.refresh',null);
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
        //今天数据
        var user_date = userService.all();
        $scope.totalSteps = user_date.totalSteps;
        $scope.totalDistance =  ($scope.totalSteps*0.6).toFixed(1);
//        $scope.totalCalory =  (userService.all().weight *  $scope.totalDistance /1000*1.036).toFixed(1);
        $scope.totalCalory =  user_date.totalCalory;


        $scope.old_day = function(){
            if( $scope.start-15 < 0){
                $scope.start =  0;
                $scope.end = 15;
                option.dataZoom[0].start = $scope.start;
                option.dataZoom[0].end = $scope.end;
                myChart.setOption(option);
            }else{
                $scope.start =   $scope.start-15;
                $scope.end =  $scope.end-15;
                option.dataZoom[0].start = $scope.start;
                option.dataZoom[0].end = $scope.end;
                myChart.setOption(option);
            }

            console.log("上一天..."+$scope.end);
        }
        $scope.next_day = function(){
            if( $scope.start+15 >85){
                $scope.start =  85;
                $scope.end = 100;
                option.dataZoom[0].start = $scope.start;
                option.dataZoom[0].end = $scope.end;
                myChart.setOption(option);
            }else{
                $scope.start =   $scope.start+15;
                $scope.end =  $scope.end+15;
                option.dataZoom[0].start = $scope.start;
                option.dataZoom[0].end = $scope.end;
                myChart.setOption(option);
            }
        }

        $scope.$on('step_ed.refresh', function () {
//            connectedService.progress_show = 1
            step = stepService.allStep();
            stepData = stepService.allData();
            updateData();
            position($scope.x_time);
            updateEcharts();
            if($scope.x_time.length>0){
                $scope.start_date = formatDate($scope.x_time[0]);
                $scope.end_date = formatDate($scope.x_time[$scope.x_time.length-1]);
            }else{
                $scope.start_date = 0;
                $scope.end_date = 0;
            }
            option.series[0].data = $scope.stepArray;
            option.xAxis[0].data = $scope.timeArray;
            option.dataZoom[0].start = $scope.start;
            option.dataZoom[0].end = $scope.end;
            myChart.setOption(option);
            $scope.totalSteps = user_date.totalSteps;
            $scope.totalDistance =  ($scope.totalSteps*0.6).toFixed(1);
            $scope.totalCalory =  (userService.all().weight *  $scope.totalDistance /1000*1.036).toFixed(1);
            $scope.loading(false);
            $scope.progress(false);

        });
        $scope.goToMain = function () {
            $state.go("main");
        }
//        $scope.onClickGoToMonth = function () {
//            $state.go("MothSportHistory");
//        }
//        $scope.onClickGoToYear = function () {
//            $state.go("YearSportHistory");
//        }

    });


