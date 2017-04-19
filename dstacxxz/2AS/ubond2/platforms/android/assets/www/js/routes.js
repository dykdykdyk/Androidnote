angular.module('ufind1')
    .config(function ($stateProvider, $urlRouterProvider,$ionicConfigProvider) {
        $ionicConfigProvider.platform.ios.tabs.style('standard');
        $ionicConfigProvider.platform.ios.tabs.position('bottom');
        $ionicConfigProvider.platform.android.tabs.style('standard');
        $ionicConfigProvider.platform.android.tabs.position('bottom');

        $ionicConfigProvider.platform.ios.navBar.alignTitle('center');
        $ionicConfigProvider.platform.android.navBar.alignTitle('center');

        $ionicConfigProvider.platform.ios.backButton.previousTitleText('').icon('ion-ios-arrow-thin-left');
        $ionicConfigProvider.platform.android.backButton.previousTitleText('').icon('ion-android-arrow-back');

        $ionicConfigProvider.platform.ios.views.transition('ios');
        $ionicConfigProvider.platform.android.views.transition('android');

        $ionicConfigProvider.views.transition('no');

        $ionicConfigProvider.scrolling.jsScrolling(true); //解决滑动卡顿
        $stateProvider
            .state("main", {
                url: "/main",
                templateUrl: "templates/main.html",
                cache: 'false',
                controller: "mainCtrl"
            })
            .state("setting", {
                url: "/setting",
                cache: 'false',
                templateUrl: "templates/setting.html",
                controller: "settingCtrl"
            })
//            .state("userSetting", {
//                url: "/userSetting",
//                templateUrl: "templates/userSetting.html"
////                controller: "settingCtrl"
//            })

            .state("select_sex", {
                url: "/select_sex",
                templateUrl: "templates/select_sex.html",
                controller: "sex_selectCtrl"
            })
            .state("sports", {
                url: "/sports",
                cache: 'false',
                templateUrl: "templates/sports.html",
                controller:"sports_endCtrl"
            })

            /*步数*/

            .state("sportHistory", {
                url: "/sportHistory",
                cache:'false',
                templateUrl: "templates/sportHistory.html",
                controller: "sportCtrl1"

            })
            .state("MothSportHistory", {
                url: "/MothSportHistory",
                cache:'false',
                templateUrl: "templates/MothSportHistory.html",
                controller: "mothSportCtrl"

            })
            .state("YearSportHistory", {
                url: "/YearSportHistory",
                cache:'false',
                templateUrl: "templates/YearSportHistory.html",
                controller: "yearSportCtrl"

            })
            /*睡眠*/
            .state("sleepHistory", {
                url: "/sleepHistory",
                cache:'false',
                templateUrl: "templates/sleepHistory.html",
                controller: "sleepCtrl"

            })
            .state("MothSleepHistory", {
                url: "/MothSleepHistory",
                cache:'false',
                templateUrl: "templates/mothSleepHistory.html",
                controller: "mothSleepCtrl"

            })
            .state("YearSleepHistory", {
                url: "/YearSleepHistory",
                cache:'false',
                templateUrl: "templates/yearSleepHistory.html",
                controller: "yearSleepCtrl"

            })
        /**心率*/
            .state("heartHistory", {
                url: "/heartHistory",
                cache: 'false',
                templateUrl: "templates/heartHistory.html",
                controller: "heartCtrl"

            })
            .state("MothHeartHistory", {
                url: "/MothHeartHistory",
                cache:'false',
                templateUrl: "templates/MothHeartHistory.html",
                controller: "mothHeartCtrl"

            })
            .state("YearHeartHistory", {
                url: "/YearHeartHistory",
                cache:'false',
                templateUrl: "templates/YearHeartHistory.html",
                controller: "yearHeartCtrl"

            })

            /*体温*/
            .state("temperatureHistory", {
                url: "/temperatureHistory",
                cache:'false',
                templateUrl: "templates/temperatureHistory.html",
                controller: "temperatureCtrl"

            })
            .state("mothTemperatureHistory", {
                url: "/mothTemperatureHistory",
                cache:'false',
                templateUrl: "templates/mothTemperatureHistory.html",
                controller: "mothTemperatureCtrl"

            })
            .state("yearTemperatureHistory", {
                url: "/yearTemperatureHistory",
                cache:'false',
                templateUrl: "templates/yearTemperatureHistory.html",
                controller: "yearTemperatureCtrl"

            })


            .state("userdata", {
                url: "/userdata",
                cache:'false',
                templateUrl: "templates/userdata.html",
                controller: "configCtrl"

            })

            .state("main_setting", {
                url: "/main_setting",
                templateUrl: "templates/main_setting.html",
                controller: "settingCtrl",
                cache: 'false'
            })
            .state("private", {
                url: "/private",
                templateUrl: "templates/private.html"
            })
            .state("protocol", {
                url: "/protocol",
                templateUrl: "templates/protocol.html"
            })
            .state("feedback", {
                url: "/feedback",
                templateUrl: "templates/feedback.html"
            })
            .state("set_time", {
                url: "/set_time",
                cache: 'false',
                templateUrl: "templates/set_time.html",
                controller: "alertCtrl"
            })

            .state("sms_reminder", {
                url: "/sms_reminder",
                cache: 'false',
                templateUrl: "templates/sms_reminder.html",
                controller: "silentAreaCtrl"
            })
            .state("lost_setting", {
                url: "/lost_setting",
                cache: 'false',
                templateUrl: "templates/lost_setting.html",
                controller: "lostSetCtrl"
            })
            /*久坐提醒*/
            .state("sedentary_setting", {
                url: "/sedentary_setting",
                cache: 'false',
                templateUrl: "templates/sedentary_setting.html",
                controller: "sedentaryCtrl"
            })

            /*抬手亮屏设置bright_screen*/
            .state("bright_screen", {
                url: "/bright_screen",
                cache: 'false',
                templateUrl: "templates/bright_screen.html",
                controller: "brightScreenCtrl"
            })
            /**运动成绩健康指数*/
            .state("sports_grades", {
                url: "/sports_grades",
                templateUrl: "templates/sports_grades.html",
                controller: "portsGradesCtrl"
            })
            .state("fall_alarm",{
                url:"/fall_alarm",
                templateUrl: "templates/fall_alarm.html",
                controller: "fallAlarmCtrl"
            })
            .state("timer_heart",{
                url:"/timer_heart",
                templateUrl: "templates/timer_heart.html",
                controller: "timerHeartCtrl"
            })


            .state("silent_time", {
                url: "/silent_time",
                cache: 'false',
                templateUrl: "templates/silent_time.html",
                controller: "silentTimeCtrl"
            })
            .state("search", {
                cache: 'false',
                url: "/search/:userId",
                templateUrl: "templates/search.html",
                controller: "searchCtrl"
            })
            .state("language", {
                url: "/language",
                templateUrl: "templates/language.html",
                controller: "languageCtrl"
            })
            .state("bond", {
                url: "/bond",
                cache: 'false',
                templateUrl: "templates/bond.html",
                controller: "bondCtrl",
                params: {'device': null
                }
            })
            .state("faq", {
                url: "/faq",
                templateUrl: "templates/faq.html",
                controller: "faqCtrl"
            })
            .state("detail", {
                url: "/faq/:deviceId",
                templateUrl: "templates/detail.html",
                controller: "detailCtrl"
            })
            .state("about", {
                url: "/about",
                templateUrl: "templates/about.html",
                controller: "aboutCtrl"
            })
        .state("sex_login", {
            url: "/sex_login",
            cache: 'false',
            templateUrl: "templates/user/sex_login.html",
            controller: "sex_loginCtrl"

        })
        .state("height_login", {
            url: "/height_login",
            cache: 'false',
            templateUrl: "templates/user/height_login.html",
            controller: "height_loginCtrl"
        })
        .state("weight_login", {
            url: "/weight_login",
            cache: 'false',
            templateUrl: "templates/user/weight_login.html",
                controller: 'weight_loginCtrl'
            })
        .state("age_login", {
            url: "/age_login",
            cache: 'false',
            templateUrl: "templates/user/age_login.html",
                controller:'age_loginCtrl'
        })
        .state("alarm_setting1", {
            url: "/alarm_setting1/:alarmId",
//            cache: 'false',
            templateUrl: "templates/alarm_setting1.html",
                controller:'alarmCtrl'
        });

        $urlRouterProvider.otherwise("/");
    });