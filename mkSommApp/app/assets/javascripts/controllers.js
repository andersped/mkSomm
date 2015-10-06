mkSomm.controller('HomeCtrl', ['$scope', 'uiGmapGoogleMapApi', function($scope, uiGmapGoogleMapApi){
	
	}
]);

mkSomm.controller('CategorySearchCtrl', ['$scope', '$location', 'categories', 'foodGroups', function($scope, $location, categories, foodGroups){
  
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

mkSomm.controller('FoodSearchCtrl', ['$scope', '$location', 'foodGroups',function($scope, $location, foodGroups){

  $scope.foodGroups = foodGroups.foodGroups;
  $scope.foods = foodGroups.foods;
  $scope.categories = foodGroups.category;
  $scope.varietals = foodGroups.varietals;
  $scope.wines = foodGroups.wines;
  $scope.clicked = false;
  $scope.search = false;
  $scope.foodPicture = true;
  $scope.pickedFood = true;
  $scope.isCollapsed = false;
  $scope.showVarietals = false;

  $scope.newFood = function(value){
    foodGroups.nextSelection(value)
    foodGroups.addToCategories(value)
    console.log($scope.categories)
    
  }

  $scope.reset = function(){
    foodGroups.resetValues()
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

    } 

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
    
      wines.create({
        name: wine.Name,
        label: wine.Labels[0].Url,
        appellation: wine.Appellation.Name,
        region: wine.Appellation.Region.Name,
        varietal: wine.Varietal.Name,
        winery: wine.Vineyard.Name,
        price: wine.PriceRetail,
        score: wine.Ratings.HighestScore,
        type: wine.Type,
      })
     console.log(wine.vote) 
    }

  }
]);

mkSomm.controller('UserCtrl', ['$scope','$state','Auth', 'users', 'uiGmapGoogleMapApi', function($scope, $state, Auth, users, uiGmapGoogleMapApi){
    $scope.test = "It works!"
    $scope.signedIn = Auth.isAuthenticated;
    console.log(users.wines)
    $scope.wines = users.wines
    $scope.wineries = users.wineries
    $scope.map = { center: { 
                latitude: 38.5, 
                longitude: -122.32 
              }, 
              zoom: 10 
            };
    $scope.marker = {
          coords: {
            latitude: 38.5,
            longitude: -122.32
          }

      } 

    Auth.currentUser().then(function (user){
        $scope.user = user;
    });

    $scope.increaseVote = function(wine){
      console.log("it works!")
      users.voteUp(wine);
    }

    $scope.decreaseVote = function(wine){
      users.voteDown(wine);
    }

    $scope.deleteWine = function(wine){
      console.log(wine)
      users.deleteWine(wine)
    }

    $scope.findWineries = function(value){
    var varietal = value
    users.findWineries(varietal)

    } 

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












