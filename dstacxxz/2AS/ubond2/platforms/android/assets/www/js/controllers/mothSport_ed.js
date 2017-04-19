angular.module('ufind1.controllers')
    .controller('mothSportCtrl', function ($scope, $state,$timeout, $stateParams, $ionicPopup,$ionicLoading,$translate,systemService, dialogsManager,connectedService,userDateService,stepService,bleService,decService,userService) {

        var myChart = echarts.init(document.getElementById('mothSport'), 'shine');

        var step = stepService.allStep();
        var stepData = stepService.allData();
//        var step = [69,70,60,62,64,63,68,60,61,62,70,60,61,62,70,60,60,66,65,61,61,61,68,61,61,62,66,57,69,70,60,62,64,63,68,60,61,62,70,60,61,62,70,60,60,66,65,61,61,61,68,61,61,62,66,57];
//        var stepData =[1451577600000,1473731100000,1473732000000,1473732900000,1473733800000,1473734700000,1473735600000,1473736500000,1473737400000,1473738300000,1473739200000,1473740100000,1473741000000,1473741900000,1473742800000,1473743700000,1473744600000,1473745500000,1473746400000,1473747300000,1473748200000,1473749100000,1473750000000,1473750900000,1473751800000,1473752700000,1473753600000,1473754500000,1451577600000,1473731100000,1473732000000,1473732900000,1473733800000,1473734700000,1473735600000,1473736500000,1473737400000,1473738300000,1473739200000,1473740100000,1473741000000,1473741900000,1473742800000,1473743700000,1473744600000,1473745500000,1473746400000,1473747300000,1473748200000,1473749100000,1473750000000,1473750900000,1473751800000,1473752700000,1473753600000,1473754500000];
        $scope.day_text = $translate.instant('day_text');
        $scope.month_text = $translate.instant('month_text');
        $scope.year_text = $translate.instant('year_text');
        $scope.refresh_er = $translate.instant('refresh_er');
        //进度条
        $scope.isShow = false;
        $scope.pro_width = 1;
        //取得图表数据
        var updateData = function(){
            if(stepData.length<=96*30){
                $scope.x_time = stepData;
                $scope.y_step = step;
            }else{
                $scope.y_step = step.slice(step.length- 96*30 ,step.length);
                $scope.x_time = stepData.slice(stepData.length- 96*30 ,stepData.length);
            }
        }
        updateData();
        function formatDate(time){
            if(time !==0){
                var oldTime = time; //得到毫秒数
                var newTime = new Date(oldTime)
                var year = newTime.getFullYear();
                var month = newTime.getMonth()+1;
                var day = newTime.getDate();
                var hours = newTime.getHours();
                var minutes = newTime.getMinutes();
                return year+'/'+month+'/'+day;
            }else{
                return 0;
            }
        }
        function formatDate2(time){
            if(time !==0){
                var oldTime = time; //得到毫秒数
                var newTime = new Date(oldTime)
                var year = newTime.getFullYear();
                var month = newTime.getMonth()+1;
                var day = newTime.getDate();
                var hours = newTime.getHours();
                var minutes = newTime.getMinutes();
                return [year,month,day] ;
            }else{
                return 0;
            }
        }
        //天为单位的数据
        $scope.day_data_array = [];
        $scope.day_time_array = [];

        $scope.oneday_step = [];
        $scope.oneday_time = [];
        function unique1(arr) {
            var result = [], hash = {};
            for (var i = 0, elem; (elem = arr[i]) != null; i++) {
                if (!hash[elem]) {
                    result.push(elem);
                    hash[elem] = true;
                }
            }
            return result;
        }
        function searchKeys(key,arr,steps){
            var result_step = 0;
            for(var i = 0;i<arr.length; i++ ){
                if(key == arr[i]){
                    result_step = result_step+steps[i];
                }
            }
            return result_step;
        }
        var steps_month =0;
        var time_month =0;
        function echars_array(time ,step){
            $scope.oneday_step = [];
            $scope.oneday_time = [];
            var myDate = new Date();
            var year2 = myDate.getFullYear();
            var month2 = myDate.getMonth()+1;
            var y = []; //某个月的y
            var x = []; //某个月的x
            for(var i = 0;i<time.length;i++ ){
                if(formatDate2(time[i])[1] == month2 & formatDate2(time[i])[0] == year2){
                    y = y.concat(formatDate(time[i]));
                    x = x.concat(step[i]);
                }
            }
            var ttt= unique1(y);
            steps_month =0;
            for(var t =0; t<ttt.length;t++){
                var one_step = searchKeys(ttt[t],y,x); //某天的步数
                $scope.oneday_step = $scope.oneday_step.concat(one_step); // 步数数组
                steps_month = steps_month+one_step;
            }

            if( $scope.oneday_time.length>0){
                time_month = $scope.oneday_time.length;
            }else{
                time_month = 1;
            }
            $scope.oneday_time = ttt;
            console.log("month step... $scope.oneday_heart"+ JSON.stringify( $scope.oneday_step))
            console.log("month stetime... $scope.oneday_time"+ JSON.stringify( $scope.oneday_time))
        }
        echars_array($scope.x_time,$scope.y_step)

        //开始位置，结束位置
        var position = function(mycars){
            console.log("mycars--------->"+mycars.length);
                $scope.start = 0;
                $scope.end = 100;
        }
        position($scope.oneday_time);

        $scope.stepArray = [];
        $scope.timeArray = [];
        $scope.dateArray = [];
        //格式化时间//毫秒转化为日期格式

        //填充图表数据
        var updateEcharts = function(){
                for(var i = 0;i<=30;i++){
                    if(i<$scope.oneday_step.length){
                        $scope.stepArray[i] = $scope.oneday_step[i];
                        $scope.timeArray[i] = $scope.oneday_time[i];
                    }
                    else{
                        $scope.stepArray[i] = 0;
                        $scope.timeArray[i] = "";
                    }
                }
        }
        if($scope.oneday_time.length>0){
            $scope.start_date = formatDate($scope.oneday_time[0]);
            $scope.end_date = formatDate($scope.oneday_time[$scope.oneday_time.length-1]);
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
                    handleSize: 8,
                    start: 94,
                    end: 100
                }
            ],
            series: [
                {
                    name:  $translate.instant('step_text1'),
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
        function aa (arr2,arr4){
            for (var i =0 ;i<arr4.length;i++){
                if(arr4[i] == arr2[arr2.length-1]){
                    return i+1;
                }
            }
        }
        var step_action = []; // 有效步数；
        function type(ty) {
            step_action = []; // 有效步数；
            for (var t = 0; t < ty.length; t++) {
                if(ty[t] >4) {
                    step_action[t] = ty[t];
                }else if(ty[t]==1){
                    step_action[t] =0;
                }else {
                    step_action[t] = 0;
                }
            }
            console.log("step_action............." + step_action.length);
        }
        $scope.showMessage= function (text) {
            dialogsManager.showMessage(text);
        }
        $scope.progress=function(show){
            console.log("进度条。。。"+show)
            $scope.isShow = show
            $scope.pro_width = 1
            console.log("进度条。。。"+ $scope.isShow + $scope.pro_width)
            bleService.request_progress($scope.deviceId,"cmdProgress",'ble').then(function (progress) {
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
        $scope.onClickRefresh_step = function(){
            $scope.is_connect = connectedService.is_connected;
            console.log("$scope.is_connect ...."+ $scope.is_connect);
            if($scope.is_connect){
                if (typeof($scope.deviceId) != 'undefined') {
                    $scope.progress(true);
                    $scope.loading(true);
                    bleService.dataRefresh($scope.deviceId, "cmdStepEd").then(function (result) {
                        console.log("历史步数1---->" + JSON.stringify(result));
                    }, function (result) {
                        console.log(" result----->" + JSON.stringify(result));
                        $scope.progress(false);
                        $scope.loading(false);
                        $scope.showMessage($scope.refresh_er);
                    }, function (result) {
                        var a2 = result.stepArray;
                        var b2 = result.timeArray;
                        var xx = stepData;
                        if(b2 && b2.length>0){
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
                            var ii =  aa(xx,b);
                            console.log("ii----->"+ii);
                            if(typeof(ii) == 'undefined'){
                                type(a);
                                stepService.addStep(step_action)
                                stepService.addData(b)
                                stepService.serializeStep();
                                stepService.serializeData();

                                $scope.$broadcast('step_ed.refresh',null);
                            }else{
                                type(a);
                                var st = step_action.slice(ii);
                                var sd = b.slice(ii);
                                stepService.addStep(st);
                                stepService.addData(sd);
                                stepService.serializeStep();
                                stepService.serializeData();
                                $scope.$broadcast('step_ed.refresh',null);
                            }}else{
                            $scope.$broadcast('step_ed.refresh',null);
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
        //本月过了多少天数
        $scope.day_date = 0;
        $scope.monthSteps = Math.ceil(steps_month/time_month);
        $scope.monthDistance = ($scope.monthSteps *0.6).toFixed(1) ;
        $scope.monthCalory  = (userService.all().weight *  $scope.monthDistance /1000*1.036).toFixed(1);

        $scope.old_day = function(){
                $scope.start =  0;
                $scope.end = 100;
                option.dataZoom[0].start = $scope.start;
                option.dataZoom[0].end = $scope.end;
                myChart.setOption(option);
            console.log("上一天..."+$scope.end);
        }
        $scope.next_day = function(){
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
            echars_array($scope.x_time,$scope.y_step)
            position($scope.x_time);
            if($scope.oneday_time.length>0){
                $scope.start_date = formatDate($scope.oneday_time[0]);
                $scope.end_date = formatDate($scope.oneday_time[$scope.oneday_time.length-1]);
            }else{
                $scope.start_date = 0;
                $scope.end_date = 0;
            }
            updateEcharts();
            option.series[0].data =  $scope.stepArray;
            option.xAxis[0].data = $scope. timeArray;
            option.dataZoom[0].start = $scope. start;
            option.dataZoom[0].end = $scope. end;
            myChart.setOption(option);
//            console.log("----step_ed.refresh------>"+ $scope.timeArray);
            $scope.monthSteps = Math.ceil(steps_month/time_month);
            $scope.monthDistance = ($scope.monthSteps *0.6).toFixed(1) ;
            $scope.monthCalory  = (userService.all().weight *  $scope.monthDistance /1000).toFixed(1);
            $scope.loading(false);
            $scope.progress(false);

        });
        $scope.goToMain = function(){
            $state.go("main");
        }
        $scope.onClickGoToDay = function(){
            $state.go("sportHistory");
        }
        $scope.onClickGoToYear = function(){
            $state.go("YearSportHistory");
        }


    });


