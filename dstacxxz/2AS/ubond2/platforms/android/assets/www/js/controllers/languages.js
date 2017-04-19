angular.module('ufind1.controllers')
    .controller('languageCtrl', function ($scope, $state, $ionicHistory, $translate, systemService) {
        var system = systemService.all();
        $scope.back = function(){
            console.log("返回上一页");
            $ionicHistory.goBack();
        }
        $scope.chs_text = $translate.instant('chs_text');
        $scope.en_text = $translate.instant('en_text');
        $scope.chs_tw_text = $translate.instant('chs_tw_text');
        $scope.langs = [
            {
                value: "chs",
                text:  $scope.chs_text
            },
            {
                value: "en",
                text: $scope.en_text
            },
            {
                value: "chs_tw",
                text: $scope.chs_tw_text
            }
        ];

        $scope.data = {
            choice: system.language
        };

        $scope.onClickFinishLanguage = function () {
            system.language = $scope.data.choice;
            systemService.serialize();
//            system.language = $scope.data.choice;
//            systemService.serialize();
            $translate.use(system.language);
//            $state.go('main');
            $ionicHistory.goBack();
        }
    });