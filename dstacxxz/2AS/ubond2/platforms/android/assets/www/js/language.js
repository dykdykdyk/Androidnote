angular.module('ufind1')

    .config(function ($translateProvider) {
        $translateProvider.translations('en', translations_en);
        $translateProvider.translations('chs', translations_chs);
        $translateProvider.translations('chs_tw', translations_chs_tw);

        $translateProvider.preferredLanguage('chs');
    })

    .config(function ($ionicConfigProvider) {
        $ionicConfigProvider.views.swipeBackEnabled(false);
        $ionicConfigProvider.backButton.text('');
        $ionicConfigProvider.backButton.previousTitleText(false);
    })
