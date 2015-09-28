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
  // $scope.food = "Food Page Working!"
  $scope.foodGroups = foodGroups.foodGroups
  $scope.foods = foodGroups.foods
  $scope.categories = foodGroups.category
  // console.log($scope.categories)


  console.log("it works")
  var allFoods = ""
  $scope.manyFoods = []
  $scope.clicked = false
  var startingFoodArray = []
  $scope.search = false

  console.log($scope.foodGroups.length)

  $scope.newFood = function(value){
    foodGroups.nextSelection(value)
    foodGroups.addToCategories(value)
    // console.log(categories)
  }

  $scope.findVarietals = function(){
    categoryNames = []
    for(i = 0; i < $scope.categories.length; i++){
      categoryNames.push($scope.categories[i].name)
    }
    // console.log(categoryNames)

    foodGroups.findVarietals(categoryNames)
  }

  // $http.get('./food_groups.json').then(function(data){
  //     $scope.foodGroup = data.data
  //     var allFoodData = data.data
  //     allFoods = allFoodData
  //     console.log(allFoods)
      
  //     for (i = 0; i < allFoodData.length; i++){
  //       $scope.manyFoods.push(allFoodData[i].name)
  //       startingFoodArray.push(allFoodData[i].name)

  //     }
  //     console.log($scope.manyFoods)
        

  // })


  $scope.yourFoods = [];
  var pairingsArray = [];
  var pairingCounter = 0;
  var categoryArray = []

  // // Runs through the different options of foods to pair with wines
  // $scope.newFood = function(value){
  //     // $scope.yourFoods.push(value)
  //     var restart = true

  //     for (i = 0; i < allFoods.length; i++){
  //       // allFoods[i];

  //        // If user selection equals one of food_groups, change selection to pairings
  //       if (value == allFoods[i].name){
  //         $scope.manyFoods = []
  //         restart = false
  //         // foodsObject.foodCategory.name.push(allFood[i])
          
  //         for (j = 0; j < allFoods[i].pairings.length; j++){
  //           // newFoodArray = allFoods[i].pairings[j]
  //           $scope.manyFoods.push(allFoods[i].pairings[j].name)
  //         }     
        
  //       // If user selection does not equal one of the food_groups run this function
  //       } else {
          
          
  //         // if ($scope.manyFoods.indexOf(value) > -1){
  //           for (j = 0; j < allFoods[i].pairings.length; j++){
            
  //           // if(allFoods[i].name == "Preparation"){
  //           //  restart = true
  //           //  break
  //           // }  
  //           // If user selection equals a name of a pairing then change selection to food name
  //           if (value == allFoods[i].pairings[j].name){
  //             $scope.manyFoods = []
  //             restart = false
  //             // $scope.yourFoods.push(value)             
              
  //             for (k = 0; k < allFoods[i].pairings[j].foods.length; k++){
  //               $scope.manyFoods.push(allFoods[i].pairings[j].foods[k].name)

  //             }
  //           } 
  //         } 
  //       } 
          
  //       //  if (restart){
  //       //    console.log(value)
  //       //    $scope.yourFoods.push(value)
  //       //  $scope.resetList()
  //       // } 

  //        // For every selection check to see what cateogry of wine it pairs with
  //        // Currently the only relationships are with pairings and foods categories 
  //    } checkCategory(value)
  //           if (restart){
  //           console.log(value)
  //           $scope.yourFoods.push(value)
  //           $scope.resetList()
  //       } 

  // }

  // This will check the names of the categories of the selected pairings and push the object into an array
  checkCategory = function(value){
    for (i = 0; i < allFoods.length; i++){
        for (j = 0; j < allFoods[i].pairings.length; j++){
          if (value == allFoods[i].pairings[j].name){
            // console.log(pairingsArray)
            pairingCounter += 1
            return pairingsArray.push(allFoods[i].pairings[j].categories)

          }

      }
    }
  } 

  // // Reset the List so the the Group_group array appears
  // $scope.resetList = function(){
  //   $scope.manyFoods = startingFoodArray
  //   if ($scope.yourFoods.length > 8){
  //     $scope.yourFoods = []
  //   } 
  // }

  // // This function will 
  // $scope.findVarietals = function(){
  //   console.log(pairingsArray)
  //   var counterArray = [].concat.apply([], pairingsArray)
  //   // console.log(counterArray.length)
  //   // var categoryArray = []
  //   // console.log(categoryArray)
  //   pushCategories();

  //       function pushCategories(){
  //         counterArray.forEach(function(category){
  //           for (i = 0; i < counterArray.length; i++){
  //             return categoryArray.push(category.name)  
  //           }
  //         }) 
  //       }
  
  // $scope.findWines = function(value){
  //   var varietal = value
    
  //   $http.get('./winesearches/'+varietal).then(function(data){
  //       // console.log(data.data.Products.List)
  //       $scope.wines = data.data.Products.List
  //       console.log($scope.wines)

        
  //   })

  // } 

  //   wineCategoryCounter = 0

  //   for (i = 0; i < categoryArray.length; i++){
  //     if (categoryArray[i] == "Bold Red"){
  //       wineCategoryCounter += 9
  //     } else if (categoryArray[i] == "Medium Red"){
  //       wineCategoryCounter += 8
  //     } else if (categoryArray[i] == "Light Red"){
  //       wineCategoryCounter += 7
  //     } else if (categoryArray[i] == "Rose"){
  //       wineCategoryCounter += 6
  //     } else if (categoryArray[i] == "Rich White"){
  //       wineCategoryCounter += 5
  //     } else if (categoryArray[i] == "Light White"){
  //       wineCategoryCounter += 4
  //     } else if (categoryArray[i] == "Sparkling"){
  //       wineCategoryCounter += 3
  //     } else if (categoryArray[i] == "Sweet White"){
  //       wineCategoryCounter += 2
  //     } else if (categoryArray[i] == "Dessert"){
  //       wineCategoryCounter += 1
  //     }
  //   } console.log(wineCategoryCounter/categoryArray.length)

  //     wineSelection = Math.round(wineCategoryCounter/categoryArray.length)
  //     console.log(wineSelection)

  //     if (wineSelection == 9){
  //       wineSelection = "Bold%20Red"
  //     } else if (wineSelection == 8){
  //       wineSelection = "Medium%20Red"
  //     } else if (wineSelection == 7){
  //       wineSelection = "Light%20Red"
  //     } else if (wineSelection == 6){
  //       wineSelection = "Rose"
  //     } else if (wineSelection == 5){
  //       wineSelection = "Rich%20White"
  //     } else if (wineSelection == 4){
  //       wineSelection = "Light%20White"
  //     } else if (wineSelection == 3){
  //       wineSelection = "Sparkling"
  //     } else if (wineSelection == 2){
  //       wineSelection = "Sweet%20White"
  //     } else if (wineSelection == 1){
  //       wineSelection = "Dessert"
  //     }
  //     var secondaryWine = "Sparkling"

  //     $http.get('./varietals/'+wineSelection).then(function(data){
  //         $scope.pairingWines = data.data
          
        

  //     })

  //     // For Multiple Wines
  //     // $http.get('./varietals/?wines='+wineSelection+'&secondwine='+secondaryWine).then(function(data){
  //     //    var wines = data.data
  //     //    console.log(wines)
        

  //     // })

  // } 

 






  // var foodCounter = {
  //       meat: 0,
  //       preparation: 0,
  //       dairy: 0,
  //       vegetable: 0,
  //       herbAndSpice: 0,
  //       starch: 0,
  //       sweet: 0


  //     }

  // // $scope.wineType = []    

  // // $scope.foods = foodsObject.foods
    
 

  //   // function meat(value) {
  //   //  $scope.foods = foodsObject.meat
  //   // };

  //   function preparation(){
  //     $scope.foods = foodsObject.preparation
  //   };




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








