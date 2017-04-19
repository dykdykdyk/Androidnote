angular.module('weekpicker', ['ionic'])

.directive('weekpicker', ['$ionicPopup', function($ionicPopup) {
	
	return {
		restrict: 'AE',
		replace: true,
		scope: {
			inputObj: "=inputObj"
		},
		link: function(scope, element, attrs) {
			scope.titleLabel = scope.inputObj.titleLabel ? scope.inputObj.titleLabel : 'Time Picker';
			scope.setLabel = scope.inputObj.setLabel ? scope.inputObj.setLabel : 'Set';
			scope.closeLabel = scope.inputObj.closeLabel ? scope.inputObj.closeLabel : 'Close';
			scope.setButtonType = scope.inputObj.setButtonType ? scope.inputObj.setButtonType : 'button-positive';
			scope.closeButtonType = scope.inputObj.closeButtonType ? scope.inputObj.closeButtonType : 'button-stable';
			scope.checked = {
				sunday: false,
				monday: false,
				tuesday: false,
				wednesday: false,
				thursday: false,
				friday: false,
				saturday: false
			};
			
			element.on("click", function() {
				$ionicPopup.show({
					templateUrl: 'templates/weekpicker.html',
					title: scope.titleLabel,
					subTitle: '',
					scope: scope,
					buttons: [{
						text: scope.closeLabel,
						type: scope.closeButtonType,
						onTap: function(e) {
							scope.inputObj.callback(undefined);
						}
					}, {
						text: scope.setLabel,
						type: scope.setButtonType,
						onTap: function(e) {
							var weekday = 0;
							if (scope.checked.sunday) weekday |= 1;
							if (scope.checked.monday) weekday |= 2;
							if (scope.checked.tuesday) weekday |= 4;
							if (scope.checked.wednesday) weekday |= 8;
							if (scope.checked.thursday) weekday |= 16;
							if (scope.checked.friday) weekday |= 32;
							if (scope.checked.saturday) weekday |= 64;
							
							scope.loadingContent = true;
							scope.inputObj.callback(weekday);
						}
					}]
				});
			});
		}
	};
}]);