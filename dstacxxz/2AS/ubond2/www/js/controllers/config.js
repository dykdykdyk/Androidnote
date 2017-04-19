angular.module('ufind1.controllers')
    .controller('configCtrl', function ($rootScope, $scope, $state, $stateParams, $ionicActionSheet, $ionicPopup, $timeout,$translate,$ionicHistory,
                                        userService,cameraService, bleService, itemService, decService,serviceImagePicker,connectedService,dialogsManager) {

        var currentPlatform = ionic.Platform.platform();
        $scope.screen_width = document.body.clientWidth;
        var device = decService.all();
        var user_date = userService.all();
        $scope.photo_picker = $translate.instant('photo_picker');
        $scope.photo_camera = $translate.instant('photo_camera');
        $scope.unnamed = $translate.instant('unnamed');
        if( user_date.userName ==''){
            $scope.userna = $scope.unnamed;
        }else{
            $scope.userna = user_date.userName;
        }
        $scope.cameraimage = user_date.image;
        console.log("图片.." +  $scope.cameraimage);
        $scope.userSex = user_date.sex;
        $scope.year_text = $translate.instant('year_dan');
        $scope.month_text = $translate.instant('month_dan');
        $scope.age_text = $translate.instant('age_tex');
        $scope.height_text = $translate.instant('height_text');
        $scope.weight_text = $translate.instant('weight_text');

        $scope.year_list = connectedService.yearList($scope.year_text);
        $scope.month_list = connectedService.mothList($scope.month_text);
        $scope.height_yearList = connectedService.height_yearList();
        $scope.weight_yearList = connectedService.weight_yearList();

        $scope.height_index = connectedService.index_list($scope.height_yearList,user_date.height)
        $scope.weight_index = connectedService.weight_index_list($scope.weight_yearList,user_date.weight)
        $scope.year_index = connectedService.index_list($scope.year_list,user_date.birthYear)
        $scope.month_index = connectedService.index_list($scope.month_list,user_date.birthMoth)

        console.log("身高："+$scope.height_index+ "，体重："+$scope.weight_index +"，年："+ $scope.year_index+"，月："+$scope.month_index)
        /*
        * 出生年月滑动选项：
        * */
        $scope.yearOption = {
            yearList: $scope.year_list,
            monthList:$scope.month_list,
            hideYear:false,
            hideMoth:false,
            title: $scope.age_text,
            yearSelected:$scope.year_index,  //默认选中数据
            monthSelected:$scope.month_index,   //默认选中数据
            height:40,
            image_path:"img/1.png"
        }
        /*
         * 身高滑动选项：
         * */
        $scope.heightOption = {
            yearList: $scope.height_yearList,
            monthList: connectedService.height_monthList(),
            hideYear:false,
            hideMoth:true,
            title:$scope.height_text,
            yearSelected:$scope.height_index,  //默认选中数据
            monthSelected:1,   //默认选中数据
            height:40,
            image_path:"img/8.png"
        }

        /*
         * 体重滑动选项：
         * */

        $scope.weightOption = {
            yearList:$scope.weight_yearList,
            monthList: connectedService.weight_monthList(),
            hideYear:false,
            hideMoth:true,
            title:$scope.weight_text,
            yearSelected: $scope.weight_index,  //默认选中数据
            monthSelected:1,   //默认选中数据
            height:40,
            image_path:"img/9.png"
        }

        $scope.back = function(){
            console.log("返回上一页");
            $ionicHistory.goBack();
        }
        $scope.setSex = function(){
            if( $scope.userSex ==1){
                $scope.text = $translate.instant('sex_1')
                return $scope.text
            }else  if( $scope.userSex ==0){
                $scope.text = $translate.instant('sex_0')
                return $scope.text
            }
        }
        $scope.sex = $scope.setSex();
        $scope.setting_ok = $translate.instant('setting_ok');
        $scope.connect_ble = $translate.instant('connect_ble');
        $scope.showMessage= function (data) {
            dialogsManager.showMessage(data);
        }
        $scope.data = {};
        $scope.onClickFinish = function(){
//            console.log("第一列选中的数据： "+$scope.yearOption.yearSelected + "  第二列选中的数据：" +$scope.yearOption.monthSelected)
              //设置个人信息提交
            user_date = userService.all();
            //用户个人信息
            $scope.user = {
//                birthYear:user_date.birthYear,
//                birthMoth: user_date.birthMoth,
//                sex:user_date.sex,
//                height:user_date.height,
//                weight:user_date.weight
                birthYear: parseInt($scope.yearOption.yearSelected),
                birthMoth:  parseInt($scope.yearOption.monthSelected),
                sex:user_date.sex,
                height:parseInt($scope.heightOption.yearSelected),
                weight:parseFloat($scope.weightOption.yearSelected)
            }
            console.log("$scope.user "+ $scope.user);
            if(connectedService.is_connected){
                if (typeof(device.id) != 'undefined'& device.id!="" ) {
                    bleService.setOption(device.id, "cmdbirthYear",$scope.user);
                    $scope.showMessage($scope.setting_ok);
                    $state.go("main_setting");
                }
            }else{
                $scope.showMessage( $scope.connect_ble);
            }
        }
        $scope.onClickEditName = function () {
            $scope.data.name ="";
            var myPopup = $ionicPopup.show({
                template: '<input style="height: 35px;font-size: 20px; padding: 2px;"  ng-keyup="WidthCheck1(16)" ng-model="data.name">',
                title:  $translate.instant('nickname'),
                scope: $scope,
                buttons: [
                    {
                        text:  $translate.instant('cancel'),
                        onTap: function (e) {
//                            return $scope.data.name;
                        }
                    },
                    {
                        text:  '<b>' + $translate.instant('ok') + '</b>',
                        type: 'sports_back',
                        onTap: function (e) {
                            if (!$scope.data.name) {
                                e.preventDefault();
                            } else {
                                return $scope.data.name;
                            }
                        }
                    }
                ]
            });
            myPopup.then(function (res) {
                if(res){
                    $scope.WidthCheck1(16)
                    user_date.userName = $scope.data.name;
                    userService.serialize();
                    $scope.userna = user_date.userName;
                }
            });
        };
        $scope.WidthCheck1 = function(maxLen){
            var w = 0;
            var tempCount = 0;
            //length 获取字数数，不区分汉子和英文
            if($scope.data.name.length){ //坑
                console.log("$scope.data.name.length---->" + $scope.data.name.length);
                for (var i=0; i<$scope.data.name.length; i++) {
                    //charCodeAt()获取字符串中某一个字符的编码
                    var c = $scope.data.name.charCodeAt(i);
                    //单字节加1
                    if ((c >= 0x0001 && c <= 0x007e) || (0xff60<=c && c<=0xff9f)) {
                        w++;
                    }
                    else {
                        w+=2;
                    }
                    if (w > maxLen) {
                        $scope.data.name = $scope.data.name.substr(0,i);
                        break;
                    }
                }
            }

        }
        $scope.onClicktakePhoto = function () {
            $ionicActionSheet.show({
                buttons: [
                    {
                        text: '<i class="icon ion-share"></i> '+$scope.photo_picker
                    },
                    {
                        text: '<i class="icon ion-arrow-move"></i>'+ $scope.photo_camera
                    }
                ],
                cancelText: 'Cancel',
                cancel: function () {
                    console.log('CANCELLED');
                },
                buttonClicked: function (index) {
                    console.log('BUTTON CLICKED', index);
                    if (index == 0) {
                        if (currentPlatform == "android") {
                            var options = {
                                maximumImagesCount: 1,
                                width: 100,
                                height: 100,
                                allowEdit: true,
                                quality: 100
                            };
                            serviceImagePicker.getPictures(options)
                                .then(function (results) {
                                    console.log("相册图片.." +  results);
//                                    $scope.cameraimage = results[0];
                                    $scope.cameraimage = results;
                                    user_date.image =  $scope.cameraimage ;
                                    userService.serialize();
//                                console.log("图片.." +  userService.all().image);
                                }, function (error) {
                                    console.log(error);
                                });
                        }else if(currentPlatform == "ios"){
                            var cameraOptions = {
                                maximumImagesCount: 1,
                                width: 100,
                                height: 100,
                                allowEdit: true,
                                quality: 100,
                                destinationType: Camera.DestinationType.FILE_URI,
                                sourceType: Camera.PictureSourceType.PHOTOLIBRARY,
                                encodingType: Camera.EncodingType.JPEG,
                                targetWidth: 300,
                                targetHeight: 300,
                                mediaType: 0,
                                cameraDirection: 0,
                                popoverOptions: CameraPopoverOptions,
                                saveToPhotoAlbum: true
                            };
                            cameraService.getPicture(cameraOptions).then(function (results) {
                                $scope.cameraimage = results;
                                user_date.image =  $scope.cameraimage ;
                                userService.serialize();
                            }, function (error) {
                                console.log(error);
                            });
                        }
                    }
                    else if (index == 1) {
                        var cameraOptions = {
                            quality: 100,
                            destinationType: Camera.DestinationType.FILE_URI,
                            sourceType: Camera.PictureSourceType.CAMERA,
                            allowEdit: true,
                            encodingType: Camera.EncodingType.JPEG,
                            targetWidth: 300,
                            targetHeight: 300,
                            mediaType: 0,
                            cameraDirection: 0,
                            popoverOptions: CameraPopoverOptions,
                            saveToPhotoAlbum: true
                        };
                        cameraService.getPicture(cameraOptions).then(function (imageData) {
                            console.log("拍照图片.." +  imageData);
                            $scope.cameraimage = imageData;
                            user_date.image =  $scope.cameraimage ;
                            userService.serialize();
                        }, function (err) {
                            console.log(err);
                        });

                    }
                    return true;
                },
                destructiveButtonClicked: function () {
                    console.log('DESTRUCT');
                    return true;
                }
            });
        };

        $scope.$on('$ionicView.beforeLeave',function(){
            user_date.weight = parseFloat($scope.weightOption.yearSelected);
            user_date.height = parseInt($scope.heightOption.yearSelected);
            user_date.birthYear = parseInt($scope.yearOption.yearSelected);
            user_date.birthMoth = parseInt($scope.yearOption.monthSelected);
            console.log("$scope.userna..."+ $scope.userna);
            if( $scope.userna =='' & $scope.userna == 'Unnamed'& $scope.userna == '未命名' ){
                user_date.userName = '';
            }
            userService.serialize();
        })

    });