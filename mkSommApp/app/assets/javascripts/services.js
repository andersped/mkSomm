mkSomm.factory('categories', ['$http', function($http){
	var o = {
		categories: []
	};

	o.getAll = function() {
		return $http.get('/categories.json').success(function(data){
			angular.copy(data, o.categories);
		});
	};

	}
])