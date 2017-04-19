angular.module('ufind1.controllers')
    .controller('mothTemperatureCtrl', function ($scope, $state, $stateParams, $timeout, $ionicPopup,$ionicLoading, dialogsManager,$translate, connectedService, temperatureService,temperatureTimeService,decService, bleService) {
        var myChart = echarts.init(document.getElementById('mothTemperature'), 'shine');
//        var temperature = [69,70,60,62,64,63,68,60,61,62,70,60,61,62,70,60,60,66,65,61,61,61,68,61,61,62,66,57,69,70,60,62,64,63,68,60,61,62,70,60,61,62,70,60,60,66,65,61,61,61,68,61,61,62,66,57];
//        var temperature_time =[1451577600000,1473731100000,1473732000000,1473732900000,1473733800000,1473734700000,1473735600000,1473736500000,1473737400000,1473738300000,1473739200000,1473740100000,1473741000000,1473741900000,1473742800000,1473743700000,1473744600000,1473745500000,1473746400000,1473747300000,1473748200000,1473749100000,1473750000000,1473750900000,1473751800000,1473752700000,1473753600000,1473754500000,1451577600000,1473731100000,1473732000000,1473732900000,1473733800000,1473734700000,1473735600000,1473736500000,1473737400000,1473738300000,1473739200000,1473740100000,1473741000000,1473741900000,1473742800000,1473743700000,1473744600000,1473745500000,1473746400000,1473747300000,1473748200000,1473749100000,1473750000000,1473750900000,1473751800000,1473752700000,1473753600000,1473754500000];

        var temperature = temperatureService.all();
        var temperature_time = temperatureTimeService.all();

//        console.log("temperature--->" + temperature.length);
//        console.log("temperature_time--->" + temperature_time);
        $scope.day_text = $translate.instant('day_text');
        $scope.month_text = $translate.instant('month_text');
        $scope.year_text = $translate.instant('year_text');
        //取得图表数据
        var updateData = function () {
            if (temperature_time.length <= 96 * 30) {
                $scope.x_time = temperature_time;
                $scope.y_heart = temperature;
            } else {
                $scope.y_heart = temperature.slice(temperature.length - 96 * 30, temperature.length);
                $scope.x_time = temperature_time.slice(temperature_time.length - 96 * 30, temperature_time.length);
            }
        }
        updateData();
        console.log("$scope.y_step--------->" + $scope.y_heart.length);
        //开始位置，结束位置
        var position = function (mycars) {
            $scope.start = 0;
            $scope.end = 100;
            console.log("mycars--------->" + mycars.length);
//            if (mycars.length >= 96 * 30) {
//                $scope.start = 90;
//                $scope.end = 100;
//                console.log(" $scope.start 0--->" + $scope.start + "  $scope.end  0--->" + $scope.end);
//            }
//            else if (mycars.length > 96*3 & mycars.length < 96 * 30) {
//                $scope.end = Math.round(mycars.length / (96 * 30) * 100);
//                $scope.start = $scope.end - 10;
//                console.log(" $scope.start 1--->" + $scope.start + "  $scope.end  1--->" + $scope.end);
//            } else if (mycars.length <= 96*3) {
//                $scope.start = 0;
//                $scope.end = 10;
//                console.log(" $scope.start 2--->" + $scope.start + "  $scope.end  2--->" + $scope.end);
//            }
        }
        position($scope.x_time);

        $scope.temperature_Array = [];
        $scope.timeArray = [];
        //格式化时间//毫秒转化为日期格式
        function formatDate(time) {
            if (time !== 0) {
                var oldTime = time; //得到毫秒数
                var newTime = new Date(oldTime)
                var year = newTime.getFullYear();
                var month = newTime.getMonth() + 1;
                var day = newTime.getDate();
                var hours = newTime.getHours();
                var minutes = newTime.getMinutes();
                return year + '/' + month + '/' + day;
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
                return [year,month ,day];
            } else {
                return 0;
            }
        }
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
        function searchKeys(key,arr,heart){
            var result_step = 0;
            var sun = 0
            for(var i = 0;i<arr.length; i++ ){
                if(key == arr[i]){
                    result_step = result_step+heart[i];
                    sun++;
                }
            }
            if(sun>0){
                return (parseFloat((result_step/sun).toFixed(1)));
            }else{
                return result_step;
            }
        }
        $scope.oneday_temp = [];
        $scope.oneday_time = [];
        function echars_array(time ,heart){
            $scope.oneday_temp = [];
            $scope.oneday_time = [];
            var myDate = new Date();
            var year2 = myDate.getFullYear();
            var month2 = myDate.getMonth()+1;
            var y = []; //某个月的y
            var x = []; //某个月的x
            for(var i = 0;i<time.length;i++ ){
                if(formatDate2(time[i])[1] == month2 & formatDate2(time[i])[0] == year2){
                    y = y.concat(formatDate(time[i]));
                    x = x.concat(heart[i]);
                }
            }
            var index_y= unique1(y);
            for(var t =0; t<index_y.length;t++){
                var one_heart = searchKeys(index_y[t],y,x); //某天的平均心率
                $scope.oneday_temp = $scope.oneday_temp.concat(one_heart); // 心率数组
            }
            $scope.oneday_time = index_y;

            console.log("heart... $scope.oneday_temp"+ JSON.stringify( $scope.oneday_temp))
            console.log("heart... $scope.oneday_time"+ JSON.stringify( $scope.oneday_time))
        }
        echars_array($scope.x_time,$scope.y_heart);

        if($scope.oneday_time.length>0){
            $scope.start_date = formatDate($scope.oneday_time[0]);
            $scope.end_date = formatDate($scope.oneday_time[$scope.oneday_time.length-1]);
        }else{
            $scope.start_date = 0;
            $scope.end_date = 0;
        }
        //填充图表数据
        var updateEcharts = function () {
            for (var i = 0; i < 30; i++) {
                if (i < $scope.oneday_time.length) {
                    $scope.temperature_Array[i] = $scope.oneday_temp[i] / 10;
                    $scope.timeArray[i] = formatDate($scope.oneday_time[i])
                }
//                else {
//                    $scope.temperature_Array[i] = 0;
//                    $scope.timeArray[i] = "";
//                }
            }
        }
        updateEcharts();
        console.log("stepArray--->" + $scope.temperature_Array.length);

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
//                    name:$translate.instant('temp_text1'),
                    minInterval: 1,
                    min:0,
                    max: 60,
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
                    name: $translate.instant('temp_text1'),
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
                    data: $scope.temperature_Array
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
        console.log("当前--------->" + JSON.stringify(device));
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
        //进度条
        $scope.isShow = false;
        $scope.pro_width = 1;
        $scope.refresh_er = $translate.instant('refresh_er');
        $scope.showMessage= function (text) {
            dialogsManager.showMessage(text);
        }
        $scope.progress=function(show){
            console.log("进度条。。。"+show)
            $scope.isShow = show;
            $scope.pro_width = 1;
            console.log("进度条。。。"+ $scope.isShow + $scope.pro_width);
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
        $scope.onClickRefresh_temp = function () {
//            $scope.$broadcast('temperature_ed.refresh',null);
            $scope.is_connect = connectedService.is_connected;
            if ($scope.is_connect) {
                if (typeof($scope.deviceId) != 'undefined') {
                    $scope.progress(true)
                    $scope.loading(true);
                    bleService.dataRefresh($scope.deviceId, "cmdTemperatureEd").then(function (result) {

                        console.log("历史温度1---->" + JSON.stringify(result));
                    }, function (result) {
                        console.log("历史温度2---->" + JSON.stringify(result));
//                        connectedService.is_connected = false;
                        $scope.progress(false);
                        $scope.loading(false);
                        $scope.showMessage($scope.refresh_er);
                    }, function (result) {
                        console.log("v 历史温度3----->" + JSON.stringify(result) + "--");
                        var tempArray = result.temperatureArray;
                        var tempTimeArray = result.temperatureTimeArray;
                        var jj = temperature_time;
                        if (tempTimeArray && tempTimeArray.length > 0) {
                            var a = [];
                            var b = [];
                            if(temperature_time.length>0){
                                var xo = jj[temperature_time.length-1];
                            }else{
                                var xo = 0;
                            }
                            var bo = 0;
                            for (var y = 0; y < tempTimeArray.length; y++) {
                                if (xo < tempTimeArray[y]) {
                                    xo = tempTimeArray[y];
                                    bo = tempArray[y];
                                    b = b.concat(xo);
                                    a = a.concat(bo);
                                }
                            }

                            var ii = aa(jj, b);
                            console.log("ii----->" + ii);
                            if (typeof(ii) == 'undefined') {
//                                temperature = temperature.concat(tempArray);
//                                temperature_time = temperature_time.concat(tempTimeArray);
                                temperatureService.add(a);
                                temperatureTimeService.add(b);

                                temperatureService.serialize();
                                temperatureTimeService.serialize();
                                $scope.$broadcast('temperature_ed.refresh', null);

                            } else {
                                console.log("更新tempTimeArray.slice(ii+1)----->" + JSON.stringify(b.slice(ii)));
//                                temperature = temperature.concat(tempArray.slice(ii));
//                                temperature_time = temperature_time.concat(tempTimeArray.slice(ii));
                                var ar = a.slice(ii);
                                var tr = b.slice(ii);
                                temperatureService.add(ar);
                                temperatureTimeService.add(tr);
                                temperatureService.serialize();
                                temperatureTimeService.serialize();
                                $scope.$broadcast('temperature_ed.refresh', null);
                            }
                        } else {
                            $scope.$broadcast('temperature_ed.refresh', null);
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
            }, 2000);
        };

        var heartUpdate = function (data) {
            console.log("data  ----" + data.length);
            if (data.length > 0) {
                $scope.max_temperature = (data.max() / 10).toFixed(1);//最大值
                if (data.min() > 0) {
                    $scope.min_temperature = (data.min() / 10).toFixed(1);//最小值
                } else {
                    $scope.min_temperature = 0;//最小值
                }
                $scope.avg_temperature = (data.avg() / 10).toFixed(1);
            } else {
                $scope.max_temperature = 0;//最大值
                $scope.min_temperature = 0;//最小值
                $scope.avg_temperature = 0;
            }

        }
        Array.prototype.max = function () {
            return cacl(this, function (item, max) {
                if (!(max > item)) {
                    return item;
                }
                else {
                    return max;
                }
            });
        };
        Array.prototype.min = function () {
            return cacl(this, function (item, min) {
                if (!(min < item)) {
                    return item;
                }
                else {
                    return min;
                }
            });
        };
        Array.prototype.sum = function () {
            return cacl(this, function (item, sum) {
                if (typeof (sum) == 'undefined') {
                    return item;
                }
                else {
                    return sum += item;
                }
            });
        };
        Array.prototype.avg = function () {
            if (this.length == 0) {
                return 0;
            }
            return this.sum(this) / this.length;
        };
        function cacl(arr, callback) {
            var ret;
            for (var i = 0; i < arr.length; i++) {
                ret = callback(arr[i], ret);
            }
            return ret;
        }

        heartUpdate($scope.oneday_temp)

        $scope.old_day = function(){
            $scope.start =  0;
            $scope.end = 100;
            option.dataZoom[0].start = $scope.start;
            option.dataZoom[0].end = $scope.end;
            myChart.setOption(option);
        }
        $scope.next_day = function(){
            $scope.start =  0;
            $scope.end = 100;
            option.dataZoom[0].start = $scope.start;
            option.dataZoom[0].end = $scope.end;
            myChart.setOption(option);
        }
        $scope.$on('temperature_ed.refresh', function () {
            $scope.progress(false);
            $scope.loading(false);
            temperature = temperatureService.all();
            temperature_time = temperatureTimeService.all();

            updateData();
            position($scope.x_time);
            echars_array($scope.x_time,$scope.y_heart);
            heartUpdate($scope.oneday_temp);

            if($scope.oneday_time.length>0){
                $scope.start_date = formatDate($scope.oneday_time[0]);
                $scope.end_date = formatDate($scope.oneday_time[$scope.oneday_time.length-1]);
            }else{
                $scope.start_date = 0;
                $scope.end_date = 0;
            }
            updateEcharts();
            option.series[0].data = $scope.temperature_Array;
            option.xAxis[0].data = $scope.timeArray;
            option.dataZoom[0].start = $scope.start;
            option.dataZoom[0].end = $scope.end;
            console.log(JSON.stringify(option));
//            heartUpdate($scope.y_heart)
            console.log("temperature长度--->" + $scope.temperature_Array.length);
            myChart.setOption(option);
        });

        $scope.goToMain = function () {
            $state.go("main");
        }
//        $scope.onClickGoToDay = function(){
//            $state.go("temperatureHistory");
//        }
//        $scope.onClickGoToYear = function(){
//            $state.go("yearTemperatureHistory");
//        }
    });




