//angular.module('ufind1.controllers')
//
//    .controller('mapCtrl', function ($scope, $timeout, locationService) {
//
//        var longitude;
//        var latitude;
//
//        var currentPlatform = ionic.Platform.platform();
//        if (currentPlatform == 'win32' || currentPlatform == 'macintel') {
//            longitude = 114.2249847839605;
//            latitude = 22.68722230099834;
//        } else {
//            longitude = locationService.getLon();
//            latitude = locationService.getLat();
//        }
//
//        $scope.mapOptions = {
//            center: {
//                longitude: longitude,
//                latitude: latitude
//            },
//            zoom: 17,
//            city: 'shenzhen',
//            markers: [
//                {
//                    longitude: longitude,
//                    latitude: latitude,
//                    width: 49,
//                    height: 60,
//                    title: '断开位置'
//                }
//            ]
//        };
//    });