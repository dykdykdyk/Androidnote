angular.module('service.datePicker', [])

.factory('serviceDatePicker', ['$window', '$q', function($window, $q) {

	return {
		show: function(options) {
			var q = $q.defer();
			options = options || {
				date: new Date(),
				mode: 'date'
			};
			$window.datePicker.show(options, function(date) {
				q.resolve(date);
			}, function(error) {
				q.reject(error);
			});
			return q.promise;
		}
	};
}]);