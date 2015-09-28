mkSomm.factory('categories', ['$http', function($http){
	var o = {
		categories: []
	};


	o.getAll = function() {
		return $http.get('/categories.json').success(function(data){
			// console.log(data)
			angular.copy(data, o.categories);
		});
	};
	return o;
	}
])

mkSomm.factory('foodGroups', ['$http', function($http){
	var o = {
		foodGroups: [],
		foods: [],
		category: [],
		varietals: []
	};


	var allFoodGroups = ""

	o.getAll = function() {
		return $http.get('/food_groups.json').success(function(data){
			allFoodGroups = data
			// console.log(allFoodGroups)
			angular.copy(data, o.foodGroups);
		});
	};
	
	o.nextSelection = function(value){

		
	
		if (typeof value.pairings != "undefined"){
				return angular.copy(value.pairings, o.foodGroups)
		} else if (typeof value.foods != "undefined"){
				// o.category.push(value.categories)
				return angular.copy(value.foods, o.foodGroups)
		} else {
				o.foods.push(value.name)
				return angular.copy(allFoodGroups, o.foodGroups)
		}
	};

	o.countFoodGroups = function(value){
		foodPickArray = []
		// console.log(foodPickArray)

	}

	o.addToCategories = function(value){
		if (value.foods){
			return angular.copy(value.categories, o.category)
		}
	}

	o.findVarietals = function(categories){
		wineCategoryCounter = 0
		console.log(categories)

		for (i = 0; i < categories.length; i++){
			if (categories[i] == "Bold Red"){
				wineCategoryCounter += 9
			} else if (categories[i] == "Medium Red"){
				wineCategoryCounter += 8
			} else if (categories[i] == "Light Red"){
				wineCategoryCounter += 7
			} else if (categories[i] == "Rose"){
				wineCategoryCounter += 6
			} else if (categories[i] == "Rich White"){
				wineCategoryCounter += 5
			} else if (categories[i] == "Light White"){
				wineCategoryCounter += 4
			} else if (categories[i] == "Sparkling"){
				wineCategoryCounter += 3
			} else if (categories[i] == "Sweet White"){
				wineCategoryCounter += 2
			} else if (categories[i] == "Dessert"){
				wineCategoryCounter += 1
			}
		} console.log(wineCategoryCounter/categories.length)

			wineSelection = Math.round(wineCategoryCounter/categories.length)
			console.log(wineSelection)

			if (wineSelection == 9){
				wineSelection = "Bold%20Red"
			} else if (wineSelection == 8){
				wineSelection = "Medium%20Red"
			} else if (wineSelection == 7){
				wineSelection = "Light%20Red"
			} else if (wineSelection == 6){
				wineSelection = "Rose"
			} else if (wineSelection == 5){
				wineSelection = "Rich%20White"
			} else if (wineSelection == 4){
				wineSelection = "Light%20White"
			} else if (wineSelection == 3){
				wineSelection = "Sparkling"
			} else if (wineSelection == 2){
				wineSelection = "Sweet%20White"
			} else if (wineSelection == 1){
				wineSelection = "Dessert"
			}
			// console.log(wineSelection)

			return $http.get('/varietals/'+wineSelection+'.json').success(function(data){
				console.log(data)
			// console.log(allFoodGroups)
				angular.copy(data, o.varietals);
		})
	// }
	

	} 


	//  $scope.newFood = function(value){
 //      // $scope.yourFoods.push(value)
 //      var restart = true

 //      for (i = 0; i < allFoods.length; i++){


 //         // If user selection equals one of food_groups, change selection to pairings
 //        if (value == allFoods[i].name){
 //          $scope.manyFoods = []
 //          restart = false
 //          // foodsObject.foodCategory.name.push(allFood[i])
          
 //          for (j = 0; j < allFoods[i].pairings.length; j++){
 //            // newFoodArray = allFoods[i].pairings[j]
 //            $scope.manyFoods.push(allFoods[i].pairings[j].name)
 //          }     
        
 //        // If user selection does not equal one of the food_groups run this function
 //        } else {
          
          
 //          // if ($scope.manyFoods.indexOf(value) > -1){
 //            for (j = 0; j < allFoods[i].pairings.length; j++){
            
 //            // if(allFoods[i].name == "Preparation"){
 //            //  restart = true
 //            //  break
 //            // }  
 //            // If user selection equals a name of a pairing then change selection to food name
 //            if (value == allFoods[i].pairings[j].name){
 //              $scope.manyFoods = []
 //              restart = false
 //              // $scope.yourFoods.push(value)             
              
 //              for (k = 0; k < allFoods[i].pairings[j].foods.length; k++){
 //                $scope.manyFoods.push(allFoods[i].pairings[j].foods[k].name)

 //              }
 //            } 
 //          } 
 //        } 
          
 //        //  if (restart){
 //        //    console.log(value)
 //        //    $scope.yourFoods.push(value)
 //        //  $scope.resetList()
 //        // } 

 //         // For every selection check to see what cateogry of wine it pairs with
 //         // Currently the only relationships are with pairings and foods categories 
 //     } checkCategory(value)
 //            if (restart){
 //            console.log(value)
 //            $scope.yourFoods.push(value)
 //            $scope.resetList()
 //        } 
	// }

 //  }




 	
	return o;

	}
])