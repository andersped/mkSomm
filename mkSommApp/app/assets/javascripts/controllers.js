mkSomm.controller('HomeCtrl', ['$scope',function($scope){
	$scope.home = "It Works!"

	}
]);

mkSomm.controller('CateogrySearch', ['$scope', '$location', 'categories' function($scope, $location, categories){
  // $scope.clicked = false;

  $scope.categories = categories.categories


    // $http.get('./categories.json').then(function(data){
    //   $scope.categories = data.data
    //   console.log(data.data)
    //   })
  }
])