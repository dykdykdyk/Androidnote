angular.module('service.imagePicker', [])

.factory('serviceImagePicker', ['$q', '$window', function($q, $window) {

	return {
		getPictures: function(options) {
			var q = $q.defer();

			$window.imagePicker.getPictures(function(results) {
				q.resolve(results);
			}, function(error) {
				q.reject(error);
			}, options);

			return q.promise;
		}
	};
}]);