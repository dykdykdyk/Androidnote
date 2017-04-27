angular.module('ufind1.controllers')

    .controller('bondCtrl', function ($rootScope, $scope, $state, $ionicActionSheet, $stateParams, $ionicHistory, $ionicLoading, $timeout, $ionicPopup, $translate, connectedService, cameraService, serviceImagePicker, bleService, userService, deviceService, decService) {
        var deviceBond = deviceService.deserialize();
        var currentPlatform = ionic.Platform.platform();
        var userDate = userService.all();
        $scope.cameraimage = null;
        if(userDate.sex == 1){
            $scope.cameraimage = userDate.image;
        }else {
            $scope.cameraimage = userDate.image2;
        }
        $scope.top = 10;
        $scope.photo_picker = $translate.instant('photo_picker');
        $scope.photo_camera = $translate.instant('photo_camera');
        $scope.item_name = {name: "",
            userId: ""
        };
        $scope.unnamed = $translate.instant('unnamed');

        /*输入框获得焦点的时候往上移动避免被键盘挡住*/
        $scope.focus = function(){
            console.log(" 获取焦点")
            $scope.top = -25;
        }
        $scope.blur = function(){
            console.log(" 失去焦点")
            $scope.top = 10;
        }

        $scope.back = function () {
            console.log("返回上一页");
            $ionicHistory.goBack();
        }
        $scope.WidthCheck = function(maxLen){
            var w = 0;
            var tempCount = 0;
            //length 获取字数数，不区分汉子和英文
            if($scope.item_name.name.length){ //坑
            for (var i=0; i<$scope.item_name.name.length; i++) {
                //charCodeAt()获取字符串中某一个字符的编码
                var c = $scope.item_name.name.charCodeAt(i);
                //单字节加1
                if ((c >= 0x0001 && c <= 0x007e) || (0xff60<=c && c<=0xff9f)) {
                    w++;
                }
                else {
                    w+=2;
                }
                if (w > maxLen) {
                    $scope.item_name.name = $scope.item_name.name.substr(0,i);
                    break;
                }
            }}
        }

        $scope.onClicktakePhoto = function () {
            $ionicActionSheet.show({
                buttons: [
                    {
                        text: '<i class="icon ion-share"></i> ' + $scope.photo_picker
                    },
                    {
                        text: '<i class="icon ion-arrow-move"></i>' + $scope.photo_camera
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
                                    $scope.cameraimage = results;
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
                            console.log("选择照片....");
                            cameraService.getPicture(cameraOptions).then(function (results) {
                                $scope.cameraimage = results;

                            }, function (error) {
                                console.log(error);
                            });
                        }
                    } else if (index == 1) {
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
                            console.log('imageData....' + imageData);
                            $scope.cameraimage = imageData;
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

        $scope.onClickFinishBond = function () {
            deviceBond = deviceService.all();//
            var device = $stateParams.device;
            var saveDeviceInfo = function (device) {
                var bondID = deviceService.get(device.id)
                userDate.whoIsLogin = true;
                userDate.image = $scope.cameraimage;
                if($scope.item_name.name){
                    userDate.userName = $scope.item_name.name;
                }
                userService.serialize();
                if (currentPlatform == 'ios' || currentPlatform == 'android') {
                    //用户个人信息
                    $scope.user = {
                        birthYear: userDate.birthYear,
                        birthMoth: userDate.birthMoth,
                        sex: userDate.sex,
                        height: userDate.height,
                        weight: userDate.weight
                    }
                    device.imageURI = $scope.cameraimage;
                    device.name = $scope.item_name.name;
                    userDate.whoIsLogin = true;
                    userDate.isSendOut = true;
                    userDate.image = $scope.cameraimage;
                    $scope.sms = {
                        fall:userDate.fall_alarm ? "1" : "0",
                        number:userDate.number,
                        message: userDate.message
                    }

                    var dec = decService.deserialize();
                    dec.id = device.id;
                    dec.name = device.rawName;
                    decService.serialize();
                    bleService.setOption("", "cmdSms", userDate.isSms ? "1" : "0")
                    bleService.setOption("", "cmdCall", userDate.isCall ? "1" : "0")

                    bleService.setOption("", "cmdFallAlarm", $scope.sms)

                    var a = 1;
                    if(bondID == null){
                        console.log("第一次绑定");
                        bleService.setOption(device.id, "cmdTimeSetting", 1)
                        deviceService.add(device);
                        deviceService.serialize();
                        $timeout(function () {
                            bleService.setOption(device.id, "cmdbirthYear", $scope.user);
                        }, 300);
                        //请求获取设备特性
                        $timeout(function () {
                            bleService.set_time(device.id, "cmdGetGN", 1).then(function (result) {
                            }, function (result) {
                            }, function (result) {
                                userDate.device_temp = parseInt(result.temperature);
                                $state.go("main");
                            });
                        }, 600);

                    }else{
                        bleService.setOption(device.id, "cmdbirthYear", $scope.user);
                        //请求获取设备特性
                        $timeout(function () {
                            bleService.set_time(device.id, "cmdGetGN", 1).then(function (result) {
                            }, function (result) {
                            }, function (result) {
                                userDate.device_temp = parseInt(result.temperature);
                                $state.go("main");
                            });
                        }, 300);

                    }
                    userService.serialize();
                }
            }

//            $state.go("main");
            if(!connectedService.is_connected){
                /**临时用调试界面*/
                $ionicLoading.show({
                    template: '<ion-spinner icon="ios"></ion-spinner>',
                    duration: 25 * 1000
                });
                if (typeof(cordova) != "undefined") {
                    bleService.connect(device.id,1).promise.then(function (result) {
                    }, function (result) {
                    }, function (result) {
                        if (result.status == "connected") {
                            console.log("$broadcast maindyk 已连接....")
                            $rootScope.$broadcast('dec.connected', 'b');
                            connectedService.is_connected = true;
                            saveDeviceInfo(device);
                            $ionicLoading.hide();
                        } else if (result.status == "disconnected") {
                            console.log("$broadcast maindyk 断开连接....")
                            connectedService.is_connected = false;
                            $rootScope.$broadcast('dec.disconnected', 'b');
                        }
                        else {
                            $ionicLoading.hide();
                            $ionicPopup.alert({
                                title: $translate.instant("connect_message"),
                                template: '<p style="text-align:center">' + $translate.instant(result) + '</p>'
                            });
                        }
                    })
                }
            }else{
                $ionicPopup.alert({
                    title: $translate.instant("connect_message"),
                    template: '<p style="text-align:center">' + $translate.instant('oneBle') + '</p>'
                });
            }

        };

    });
