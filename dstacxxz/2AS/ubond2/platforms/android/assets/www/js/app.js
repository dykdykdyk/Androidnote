angular.module('ufind1', [
	'ionic',
    'pascalprecht.translate',
    'ufind1.controllers',
	'ufind1.services.faq',
	'ufind1.services.devices',
    'ufind1.services.items',
	'ufind1.services.system',
    'ufind1.services.connected',
	'weekpicker',
	'service.ble',
    'service.camera',
    'service.imagePicker',
    'CoderYuan',
    'ufind1.services.commonService',
    'heightpicker',
    'alarmpicker',
    'heightpicker_age',
    'ufind1.services.user_setting',
    'ufind1.services.userdate',
    'ufind1.services.step',
    'ufind1.services.heart_data',
    'ufind1.services.heart_time',
    'ufind1.services.temperature_data',
    'ufind1.services.temperature_time',
    'ufind1.services.dec',
    'ufind1.services.sleep_type',
    'ufind1.services.sleep_time',
    'ufind1.services.dialogs',
    'heightpicker_alarm',
    'DatetimePicker'
])

.run(function($ionicPlatform,$state,$translate,userService,systemService) {
        var user_data  = userService.deserialize();
        var system = systemService.deserialize();
        var isLogin = function(){
            if( user_data.whoIsLogin == true){
                $translate.use(getSystemLanguage());
                $state.go("main");
            }else{
                $translate.use(getSystemLanguage());
//                $state.go("main");   //调试用
                $state.go("height_login");
            }
        }
        function getSystemLanguage() {
            if (system.language == null) {
                var language = navigator.language;
                var zh_patt = new RegExp(/^zh-[a-zA-Z]*/);
                if (zh_patt.test(language))
                    return "chs";
                else
                    return "en";
            }
            else
                return system.language;
        }
	$ionicPlatform.ready(function() {
        isLogin();
        if (window.cordova && window.cordova.plugins.Keyboard) {
			// Hide the accessory bar by default (remove this to show the accessory bar above the keyboard
			// for form inputs)
			cordova.plugins.Keyboard.hideKeyboardAccessoryBar(false);

			// Don't remove this line unless you know what you are doing. It stops the viewport
			// from snapping when text inputs are focused. Ionic handles this internally for
			// a much nicer keyboard experience.
			cordova.plugins.Keyboard.disableScroll(true);
		}
		if (window.StatusBar) {
			StatusBar.styleDefault();
		}
	});


});