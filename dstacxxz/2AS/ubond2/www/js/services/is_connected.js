/**
 * Created by Administrator on 16-7-14.
 */

/**
 *   连接状态
 *   true : 连接中
 *   false : 断开
 * */

angular.module('ufind1.services.connected', [])

    .factory('connectedService', function() {
        return {
            is_connected : false,
            progress_show:1,

            del_bond:1,
            //yearOption
            yearList: function(dan) {
                var yearList =[];
                for(var i=1940;i<2020;i++){
                    yearList.push(i+dan);
                 }
                return yearList;
            },
            mothList: function(dan) {
                var monthList =[];
                for(var i = 1;i<=12;i++){
                    monthList.push(i+dan);
                }
                return monthList;
            },
            height_yearList:function(){
                var list =[];
                for(var i = 30;i<=240;i++){
                    list.push(i+' cm');
                }
                return list;
            },
            height_monthList:function(){
                var list =[];
                for(var i = 0;i<=3;i++){
                    list.push(i);
                }
                return list;
            },
            weight_yearList:function(){
                var list =[];
                for(var i = 1;i<=1024;i++){
                    list.push(i/2+' kg');
                }
                return list;
            },
            weight_monthList:function(){
                var list =[];
                for(var i = 0;i<=3;i++){
                    list.push(i);
                }
                return list;
            },
            index_list:function(arr ,index){
                for(var i=0;i<arr.length;i++){
                    if(index ==parseInt(arr[i])){
                        console.log("parseInt(arr[i])-" +parseInt(arr[i]))
                        return i
                    }
                }
            },
            weight_index_list:function(arr ,index){
                for(var i=0;i<arr.length;i++){
                    if(index ==parseFloat(arr[i])){
                        console.log("parseFloat(arr[i])-" +parseFloat(arr[i]))
                        return i
                    }
                }
            }

//            for(var i = 20;i<=240;i++){
//            $scope.heightOption.yearList.push(i+" cm");
//            $scope.heightOption.monthList.push(i);
//        }
//        for(var i = 20;i<=1000;i++){
//            $scope.weightOption.yearList.push(i/2+" kg");
//            $scope.weightOption.monthList.push(i);
//        }
        }
    });