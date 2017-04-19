/**
 * Created by Administrator on 16-6-29.
 */
angular.module('ufind1.services.step', [])

    .factory('stepService', function () {
        /*历史步数*/

        var stepCounter = [];
        var data = [];
        return {
            serializeStep: function() {
                localStorage.setItem("stepCounter", angular.toJson(stepCounter))
            },
            deserializeStep: function() {
                tmp = angular.fromJson(localStorage.getItem("stepCounter"));
                if (typeof(tmp) === 'undefined' || tmp === null) {

                    return stepCounter = [];
                } else {
                    stepCounter = tmp;
                    return stepCounter;
                }
            },
            allStep: function () {
                return stepCounter;
            },
            addStep: function (ste) {
                stepCounter = stepCounter.concat(ste);
            },


            serializeData: function() {
                localStorage.setItem("data", angular.toJson(data))
            },
            deserializeData: function() {
                tmp = angular.fromJson(localStorage.getItem("data"));
                if (typeof(tmp) === 'undefined' || tmp === null) {

                    return data = [];
                } else {
                    data = tmp;
                    return data;
                }
            },
            allData: function () {
                return data;
            },
            addData: function (d) {
                data = data.concat(d);
            },



            del: function (star,stop) {
            }


        };
    });