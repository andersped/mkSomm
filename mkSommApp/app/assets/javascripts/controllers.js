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

mkSomm.controller('FoodSearchCtrl', ['$scope', '$location', 'foodGroups', function($scope, $location, foodGroups){

  $scope.foodGroups = foodGroups.foodGroups
  $scope.foods = foodGroups.foods
  $scope.categories = foodGroups.category
  $scope.varietals = foodGroups.varietals
  $scope.wines = foodGroups.wines
  $scope.clicked = false
  $scope.search = false

  $scope.newFood = function(value){
    foodGroups.nextSelection(value)
    foodGroups.addToCategories(value)
    console.log($scope.categories)
    // console.log(categories)
  }

  $scope.findVarietals = function(){
    console.log(foodGroups.category)
    var wineCategories = [].concat.apply([], foodGroups.category)
    var categoryNames = []

    for(i = 0; i < wineCategories.length; i++){
      categoryNames.push(wineCategories[i].name)
    }

    foodGroups.findVarietals(categoryNames)
  }

   $scope.findWines = function(value){
    var varietal = value
    foodGroups.findWines(varietal)
    console.log(foodGroups.wines)

  } 


  // WineSearchCtrl

  
  }
])

mkSomm.controller('NavCtrl', ['$scope', 'Auth', function($scope, Auth){
  $scope.signedIn = Auth.isAuthenticated;
  $scope.logout = Auth.logout;

  Auth.currentUser().then(function (user){
    $scope.user = user;
  });

  $scope.$on('devise:new-registration', function (e, user){
    $scope.user = user;
  });

  $scope.$on('devise:login', function (e, user){
    $scope.user = user;
  });

  $scope.$on('devise:logout', function (e, user){
    $scope.user = {};
  });


  
  }
]);

mkSomm.controller('AuthCtrl', ['$scope','$state','Auth', function($scope, $state, Auth){


  $scope.login = function() {
    Auth.login($scope.user).then(function(){
      $state.go('home');
    });
  };

  $scope.register = function() {
    Auth.register($scope.user).then(function(){
      $state.go('home');
    });
  };

  }
]);








