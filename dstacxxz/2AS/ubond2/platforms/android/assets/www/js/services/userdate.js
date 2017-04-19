/**
 * Created by Administrator on 16-6-16.
 */
angular.module('ufind1.services.userdate', [])
    .factory('userDateService', function() {
        /*总用户信息*/
        var userDate = [];
        return {
            serialize: function() {
                localStorage.setItem("user_date", angular.toJson(userDate))
            },
            deserialize: function() {
                tmp = angular.fromJson(localStorage.getItem("user_date"));
                if (typeof(tmp) === 'undefined' || tmp === null) {
                    return userDate = [];
                } else {
                    userDate = tmp;
                    return userDate;
                }
            },
            all: function () {
                return userDate;
            },
            getLength:function () {
                    return userDate.length;
            },

            get: function (userId) {
//                console.log("aaauserId"+userId);
                for (var i = 0; i<userDate.length; i++) {
//                    console.log("aaa"+JSON.stringify(userDate[i]));
                    if (userDate[i].userIdd == userId) {
                        return userDate[i];
                    }
                }
                return null;
            },
            add: function (user) {
                userDate = userDate.concat(user);
//                console.log("aaa"+JSON.stringify(userDate));
            },
            update: function(user){
                for(var i = 0;i<userDate.length;i++){
                    if(userDate[i].userIdd == user.userIdd){
                        userDate.splice(i,1,user);
                        break;
                    }
                }
//                console.log("更新"+JSON.stringify(userDate));
            },

            del: function (userDateId) {
                for (var i = 0; i < userDate.length; i++) {
                    if (userDate[i].userIdd === userDateId) {
                        break;
                    }
                }
                if (i > -1) {
                    userDate.splice(i, 1);
                }
            }
        };


    });