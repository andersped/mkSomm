mkSomm.controller('HomeCtrl', ['$scope',function($scope){
	$scope.home = "It Works!"

	}
]);

mkSomm.controller('CategorySearchCtrl', ['$scope', '$location', 'categories', function($scope, $location, categories){
  // $scope.clicked = false;

  $scope.categories = categories.categories
  

    // $http.get('./categories.json').then(function(data){
    //   $scope.categories = data.data
    //   console.log(data.data)
    //   })
  }
])

mkSomm.controller('NavCtrl', ['$scope',function($scope){
  // $scope.signedIn = Auth.isAuthenticated;
  // $scope.logout = Auth.logout;

  // Auth.currentUser().then(function (user){
  //   $scope.user = user;
  // });

  // $scope.$on('devise:new-registration', function (e, user){
  //   $scope.user = user;
  // });

  // $scope.$on('devise:login', function (e, user){
  //   $scope.user = user;
  // });

  // $scope.$on('devise:logout', function (e, user){
  //   $scope.user = {};
  // });


  
  }
]);