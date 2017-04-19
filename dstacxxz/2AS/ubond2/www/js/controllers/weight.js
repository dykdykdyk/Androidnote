//angular.module('ufind1.controllers')
//    .controller('weightCtrl', function ($scope) {
//        var vm=$scope.vm={};
//
//        vm.cb = function () {
//            console.log(vm.CityPickData1.areaData)
//            console.log(vm.CityPickData2.areaData)
//            console.log(vm.CityPickData3.areaData)
//            console.log(vm.CityPickData4.areaData)
//        }
//        //例1
//        vm.CityPickData1 = {
//            areaData: [],
//            backdrop: true,
//            backdropClickToClose: true,
//            defaultAreaData: ['江苏', '无锡', '江阴市'],
//            buttonClicked: function () {
//                vm.cb()
//            },
//            tag: '-',
//            iconClass: 'ion-location',
//            title: '有icon的数据'
//        }
//        //例2
//        vm.CityPickData2 = {
//            areaData: ['请选择城市'],
//            title: '没有初始城市',
//            hardwareBackButtonClose: false
//        }
//        //例3
//        vm.CityPickData3 = {
//            areaData: [],
//            defaultAreaData: ['江苏', '无锡', '江阴市'],
//            title: '初始城市江苏无锡江阴市'
//        }
//        //例4
//        vm.CityPickData4 = {
//            areaData: [],
//            title: '外部更改值',
//            watchChange: true
//        }
//        vm.change = function () {
//            console.log('change')
//            vm.CityPickData4.areaData = ['上海', '徐汇区']
//        }
//        vm.sync = function () {
//            console.log('sync')
//            vm.CityPickData4.areaData = vm.CityPickData2.areaData
//        }
//    })