angular.module('service.camera', [])

.factory('cameraService', ['$q', function($q) {
	return {
		getPicture: function(options) {
			var q = $q.defer();

			if (!navigator.camera) {
				q.resolve(null);
				return q.promise;
			}

			navigator.camera.getPicture(function(imageData) {
				q.resolve(imageData);
			}, function(err) {
				q.reject(err);
			}, options);
			return q.promise;
		},

		cleanup: function() {
			var q = $q.defer();

			navigator.camera.cleanup(function() {
				q.resolve();
			}, function(err) {
				q.reject(err);
			});

			return q.promise;
		}
	};
}]);