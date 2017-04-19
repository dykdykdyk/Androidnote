angular.module('ufind1.controllers')
    .controller('yearSportCtrl', function ($scope, $state, $timeout, $stateParams, $ionicPopup, $ionicLoading, $translate, userService,systemService, dialogsManager, connectedService, stepService, bleService, decService) {
        var myChart = echarts.init(document.getElementById('yearSport'), 'shine');
//        var stepData  =[1473732000000,1473732900000,1473733800000,1473734700000,1473736500000,1473737400000,1473738300000,1473739200000,1473740100000,1473741000000,1473741900000,1473742800000,1473743700000,1473744600000,1473745500000,1473746400000,1473747300000,1473748200000,1473749100000,1473750000000,1473750900000,1473751800000,1473752700000,1473753600000,1473732000000,1473732900000,1473733800000,1473734700000,1473736500000,1473737400000,1473738300000,1473739200000,1473740100000,1473741000000,1473741900000,1473742800000,1473743700000,1473744600000,1473745500000,1473746400000,1473747300000,1473748200000,1473749100000,1473750000000,1473750900000,1473751800000,1473752700000,1473753600000]
//        var step = [8,2,2,10,2,2,2,2,2,2,2,2,2,2,2,2,54,2,2,2,2,2,2,38,8,2,2,10,2,2,2,2,2,2,2,2,2,2,2,2,54,2,2,2,2,2,2,38]

        var step = stepService.allStep();
        var stepData = stepService.allData();
        $scope.day_text = $translate.instant('day_text');
        $scope.month_text = $translate.instant('month_text');
        $scope.year_text = $translate.instant('year_text');
        $scope.refresh_er = $translate.instant('refresh_er');
        //进度条
        $scope.isShow = false;
        $scope.pro_width = 1;
        //取得图表数据
        var updateData = function () {
            if(stepData.length<=96*365){
                $scope.x_time = stepData;
                $scope.y_step = step;
            }else{
                $scope.y_step = step.slice(step.length- 96*365 ,step.length);
                $scope.x_time = stepData.slice(stepData.length- 96*365 ,stepData.length);
            }
        }
        updateData();

        //开始位置，结束位置
        var position = function (mycars) {
                $scope.start = 0;
                $scope.end = 100;
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
                var year = newTime.getFullYear();
                var month = newTime.getMonth() + 1;
                return year + '/' + month;
            } else {
                return 0;
            }
        }

        function formatDate2(time) {
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

        //去掉重复的天数
        function unique2(arr) {
            var result = [], hash = {};
            for (var i = 0, elem; (elem = arr[i]) != null; i++) {
                if (!hash[elem]) {
                    result.push(elem);
                    hash[elem] = true;
                }
            }
            return result;
        }
        function searchKeys2(needle, haystack ,step)
        {
            var result_step = 0;
            for (var i in haystack)
            {
                if (haystack[i] == needle)
                {
                    result_step =result_step + step[i];
                }
            }
            return result_step;
        }
        $scope.month_steps = [];
        $scope.month_time = [];
        function echars_array(time, step) {
            $scope.month_steps = [];
            $scope.month_time = [];
            var myDate = new Date();
            var year2 = myDate.getFullYear();
            var y = []; //某个年的y
            var x = step; //某个年的x
            for (var i = 0; i < time.length; i++) {
                if(formatDate2(time[i])[0] == year2){
                    y = y.concat(formatDate(time[i]));

                }

            }
            console.log("x--------->" + JSON.stringify(x));
            console.log("y--------->" + JSON.stringify(y));
            var xxx = unique2(y);
            for(var t = 0; t<xxx.length;t++ ){
                var ax = searchKeys2(xxx[t],y,x);       //等到重复的下标
                $scope.month_steps = $scope.month_steps.concat(ax);
                $scope.month_time = $scope.month_time.concat(xxx[t]);
            }
            console.log("$scope.month_time--------->" + JSON.stringify($scope.month_time));
            console.log("$scope.month_steps--------->" + JSON.stringify($scope.month_steps));
        }
        echars_array($scope.x_time, $scope.y_step);
        //填充图表数据
        var updateEcharts = function () {

            for (var i = 0; i < 13; i++) {
                    if (i < $scope.month_time.length) {
                $scope.stepArray[i] = $scope.month_steps[i];
                $scope.timeArray[i] =$scope.month_time[i];
                    }
//                    else {
//                        $scope.stepArray[i] = 0;
//                        $scope.timeArray[i] = "";
//                    }
            }
        }
        if($scope.month_time.length>0){
            $scope.start_date =  $scope.month_time[0];
            $scope.end_date = $scope.month_time[$scope.month_time.length-1];
        }else{
            $scope.start_date = 0;
            $scope.end_date = 0;
        }

        updateEcharts();
        myChart.showLoading();
        var option = {
            tooltip: {
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
//                    name: $translate.instant('step_text1'),
                    minInterval: 10,
                    min: 0,
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
                    splitArea: {           // 分隔区域,
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
                    start: 94,
                    end: 100
                }

            ],
            series: [
                {
                    name: $translate.instant('step_text1'),
                    type: 'line',
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
            console.log("连接蓝牙ID--------->" + $scope.deviceId);
        }
        function aa(arr2, arr4) {
            for (var i = 0; i < arr4.length; i++) {
                if (arr4[i] == arr2[arr2.length - 1]) {
                    return i + 1;
                }
            }
        }

        var step_action = []; // 有效步数；
        function type(ty) {
            step_action = []; // 有效步数；
            for (var t = 0; t < ty.length; t++) {
                if (ty[t] > 4) {
                    step_action[t] = ty[t];
                } else if (ty[t] == 1) {
                    step_action[t] = 0;
                } else {
                    step_action[t] = 0;
                }
            }
            console.log("step_action............." + step_action.length);
        }

        $scope.showMessage = function (text) {
            dialogsManager.showMessage(text);
        }
        $scope.progress = function (show) {
            console.log("进度条。。。" + show)
            $scope.isShow = show
            $scope.pro_width = 1
            console.log("进度条。。。" + $scope.isShow + $scope.pro_width)
            bleService.request_progress($scope.deviceId, "cmdProgress", 'ble').then(function (progress) {
                console.log("1.cmdProgress---->" + JSON.stringify(progress));
            }, function (progress) {
                console.log("2.cmdProgress---->" + JSON.stringify(progress));
                $scope.loading(false);
                $scope.isShow = false;
                $scope.showMessage($scope.refresh_er);
            }, function (progress) {
                console.log("3.cmdProgress---->" + JSON.stringify(progress));
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
        $scope.onClickRefresh_step = function () {
//            $scope.$broadcast('step_ed.refresh',null);
            $scope.is_connect = connectedService.is_connected;
            console.log("$scope.is_connect ...." + $scope.is_connect);
            if ($scope.is_connect) {
                if (typeof($scope.deviceId) != 'undefined') {
                    $scope.progress(true);
                    $scope.loading(true);
                    bleService.dataRefresh($scope.deviceId, "cmdStepEd").then(function (result) {
                        console.log("历史步数1---->" + JSON.stringify(result));
                    }, function (result) {
                        console.log("result---->" + JSON.stringify(result));
//                        connectedService.is_connected = false;
                        $scope.progress(false);
                        $scope.loading(false);
                        $scope.showMessage($scope.refresh_er);
                    }, function (result) {
//                    console.log("历史步数result----->" + JSON.stringify(result) + "");
                        var a2 = result.stepArray;
                        var b2 = result.timeArray;
                        var xx = stepData;
                        if (b2 && b2.length > 0) {
                            var a = [];
                            var b = [];
                            if (stepData.length > 0) {
                                var xo = xx[stepData.length - 1];
                            } else {
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
//                                console.log("更新heartTimeArray.slice(ii+1)----->"+JSON.stringify(bb.slice(ii)));
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
        //年数据
//        var stepUpdate = function (data) {
//            if (data.length > 0) {
//                $scope.step = parseInt(data.sum());
//
//            } else {
//                $scope.step = 0;
//            }
//
//        }

//        function cacl(arr, callback) {
//            var ret;
//            for (var i = 0; i < arr.length; i++) {
//                ret = callback(arr[i], ret);
//            }
//            return ret;
//        }

//        Array.prototype.sum = function () {
//            return cacl(this, function (item, sum) {
//                if (typeof (sum) == 'undefined') {
//                    return item;
//                }
//                else {
//                    return sum += item;
//                }
//            });
//        };

//        stepUpdate($scope.y_step)
//        //今年过了的多少天数
//        $scope.day_date = 0;
//        function formatDay(time) {
//            if (time !== 0) {
//                var oldTime = time; //得到毫秒数
//                var newTime = new Date(oldTime)
//                var year = newTime.getFullYear();
//                var month = newTime.getMonth() + 1;
//                var day = newTime.getDate();
//                return year + '/' + month + '/' + day;
//            } else {
//                return 0;
//            }
//        }

//        //去掉重复的天数
//        function unique(arr) {
//            var result = [], hash = {};
//            for (var i = 0, elem; (elem = arr[i]) != null; i++) {
//                if (!hash[elem]) {
//                    result.push(elem);
//                    hash[elem] = true;
//                }
//            }
//            return result;
//        }
//
//        function day_date(time) {
//            var t = [];
//            for (var i = 0; i < time.length; i++) {
////                console.log('time......'+formatDay(time[i]))
//                t = t.concat(formatDay(time[i]))
//            }
//            t = unique(t);
//            console.log('TTTT......' + JSON.stringify(t))
//            $scope.day_date = t.length > 0 ? t.length : 1;
//        }
//
//
//        day_date($scope.x_time);
        function sun(arr){
            var sum=0;
            for(var i=0;i<arr.length;i++){
                sum =sum+arr[i]
            }
            return sum;
        }
        function sun_time(arr){
            var sun = 0;
            if(arr.length>0){
                sun = arr.length;
            }else{
                sun = 1;
            }
            return sun;
        }
        $scope.yearSteps = Math.ceil(sun($scope.month_steps)/sun_time($scope.month_time));
        $scope.yearDistance = ($scope.yearSteps * 0.6).toFixed(1);
        $scope.yearCalory =  (userService.all().weight *  $scope.yearDistance /1000*1.036).toFixed(1);
        $scope.old_day = function(){
//            if( $scope.start-50 < 0){
//                $scope.start =  0;
//                $scope.end = 50;
//                option.dataZoom[0].start = $scope.start;
//                option.dataZoom[0].end = $scope.end;
//                myChart.setOption(option);
//            }else{
//                $scope.start =   $scope.start-50;
//                $scope.end =  $scope.end-50;
//                option.dataZoom[0].start = $scope.start;
//                option.dataZoom[0].end = $scope.end;
//                myChart.setOption(option);
//            }
            $scope.start =  0;
            $scope.end = 100;
            option.dataZoom[0].start = $scope.start;
            option.dataZoom[0].end = $scope.end;
            myChart.setOption(option);
            console.log("上一天..."+$scope.end);
        }
        $scope.next_day = function(){
//            if( $scope.start+50 >50){
//                $scope.start =  50;
//                $scope.end = 100;
//                option.dataZoom[0].start = $scope.start;
//                option.dataZoom[0].end = $scope.end;
//                myChart.setOption(option);
//            }else{
//                $scope.start =   $scope.start+50;
//                $scope.end =  $scope.end+50;
//                option.dataZoom[0].start = $scope.start;
//                option.dataZoom[0].end = $scope.end;
//                myChart.setOption(option);
//            }
            $scope.start =  0;
            $scope.end = 100;
            option.dataZoom[0].start = $scope.start;
            option.dataZoom[0].end = $scope.end;
            myChart.setOption(option);
            console.log("下一天..."+$scope.end);
        }
        $scope.$on('step_ed.refresh', function () {
            step = stepService.allStep();
            stepData = stepService.allData();
            updateData();
            position($scope.x_time);
            echars_array($scope.x_time, $scope.y_step);
            updateEcharts();
            if($scope.month_time.length>0){
                $scope.start_date = $scope.month_time[0];
                $scope.end_date = $scope.month_time[$scope.month_time.length-1];
            }else{
                $scope.start_date = 0;
                $scope.end_date = 0;
            }

            option.series[0].data = $scope.stepArray;
            option.xAxis[0].data = $scope.timeArray;
            option.dataZoom[0].start = $scope.start;
            option.dataZoom[0].end = $scope.end;
            myChart.setOption(option);
//            stepUpdate($scope.y_step)
//            $scope.day_date = 0;
//            day_date($scope.x_time);
            $scope.yearSteps = Math.ceil(sun($scope.month_steps)/sun_time($scope.month_time));
            $scope.yearDistance = ($scope.yearSteps * 0.6).toFixed(1);
            $scope.yearCalory =  (userService.all().weight *  $scope.yearDistance /1000*1.036).toFixed(1);
            $scope.loading(false);
            $scope.progress(false);

//            console.log("----step_ed.refresh------>" + $scope.timeArray);
        });
        $scope.goToMain = function () {
            $state.go("main");
        }
        $scope.onClickGoToDay = function () {
            $state.go("sportHistory");
        }
        $scope.onClickGoToMonth = function () {
            $state.go("MothSportHistory");
        }
    });




