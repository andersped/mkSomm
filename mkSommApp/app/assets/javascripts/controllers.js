mkSomm.controller('HomeCtrl', ['$scope',function($scope){
	$scope.home = "It Works!"

	}
]);

mkSomm.controller('CategorySearchCtrl', ['$scope', '$location', 'categories', 'foodGroups', function($scope, $location, categories, foodGroups){
  // $scope.clicked = false;
  console.log(categories.categories)
  $scope.categories = categories.categories
  $scope.varietals = categories.varietals
  $scope.wines = foodGroups.wines
  $scope.clicked = false

  $scope.findVarietals = function(value){
    categories.findNewVarietals(value)
    console.log(value)
    }
  
  $scope.findWines = function(value){
    var varietal = value
    foodGroups.findWines(varietal)
    console.log(foodGroups.wines)

  } 

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
    // console.log(foodGroups.wines)
    // console.log($scope.wines[0])

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

mkSomm.controller('WineSearchCtrl', ['$scope', '$location', function($scope, $location){
  $scope.test = "It Works!"

  }
])

mkSomm.controller('WineCtrl', ['$scope', '$location', 'wines', function($scope, $location, wines){
  $scope.home = "It Works!"
    
    $scope.addWine = function(wine){
      console.log(wine)
    
    wines.create({
      name: wine.Name,
      label: wine.Labels[0].Url,
      appellation: wine.Appellation.Name,
      region: wine.Appellation.Region.Name,
      varietal: wine.Varietal.Name,
      winery: wine.Vineyard.Name,
      price: wine.PriceRetail,
      score: wine.Ratings.HighestScore,
      type: wine.Type
    })
    // console.log(winesObject)



    }

    // wine.Name, Label.Url, wine.Appellation.Name, wine.Appellation.Region.Name, wine.Varietal.Name, wine.Vineyard.Name, wine.PriceRetail, wine.Ratings.HighestScore, wine.Type

  }
]);

mkSomm.controller('UserCtrl', ['$scope','$state','Auth', function($scope, $state, Auth){
    $scope.test = "It works!"
  }
])

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

  $scope.logout = function() {
    Auth.logout($scope.user).then(function(){
      $state.go('home')
    });
  };

  }
]);












