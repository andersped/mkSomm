mkSomm.factory('categories', ['$http', function($http){
	var o = {
		categories: [],
		varietals: [], 
		wines: []
	};


	o.getAll = function() {
		return $http.get('/categories.json').success(function(data){
			angular.copy(data, o.categories);
		});
	};

	o.findNewVarietals = function(value){
		console.log(value)
		console.log("Its working!")
		return angular.copy(value.varietals, o.varietals)
	}

	return o;
	

	}
])

mkSomm.factory('foodGroups', ['$http', function($http){
	var o = {
		foodGroups: [],
		foods: [],
		category: [],
		varietals: [],
		wines: []
	};


	var allFoodGroups = ""

	o.getAll = function() {
		return $http.get('/food_groups.json').success(function(data){
			allFoodGroups = data
			console.log(allFoodGroups)
			angular.copy(data, o.foodGroups);
		});
	};
	
	o.resetValues = function(){
		return angular.copy(allFoodGroups, o.foodGroups)
	}

	o.nextSelection = function(value){
	
		if (typeof value.pairings != "undefined"){
				return angular.copy(value.pairings, o.foodGroups)
		} else if (typeof value.foods != "undefined"){
				if (value.foods.length < 1) {
					o.foods.push(value.name)
					return angular.copy(allFoodGroups, o.foodGroups)
				};
				return angular.copy(value.foods, o.foodGroups)
		} else {
			o.foods.push(value.name)
			return angular.copy(allFoodGroups, o.foodGroups)
		}
	};

	o.countFoodGroups = function(value){
		foodPickArray = []
	}

	o.addToCategories = function(value){
		if (value.foods){
			o.category.push(value.categories)
		}
	}

	o.findVarietals = function(categories){
		wineCategoryCounter = 0

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

			wineSelection = Math.round(wineCategoryCounter/categories.length)+2

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

			return $http.get('/varietals/'+wineSelection+'.json').success(function(data){
				console.log(data)
				angular.copy(data, o.varietals);
		})

	

	}

	o.findWines = function(varietal) {
		return $http.get('/winesearches/'+varietal+'.json').success(function(data){			
			angular.copy(data.Products.List, o.wines);
		});
	};
 	
	return o;

	}
])

mkSomm.factory('wines', ['$http', function($http){
	var o = {
   wines: []
  };

  o.create = function(wine) {
 	 	return $http.post('/wines.json', wine).success(function(data){
   	o.wines.push(data);

  	});
	};

	return o;

	}
])

mkSomm.factory('users', ['$http', function($http){
	var o = {
		wines: [],
		wineries: [],
		locations: []
	};

	o.getAll = function() {
		return $http.get('/wines.json').success(function(data){
			
			angular.copy(data, o.wines);
		});
	};

	o.deleteWine = function(wine) {
		console.log("first delete!")
		return $http.delete('/wines/'+ wine.id +'.json').then(
			$http.get('/wines.json').success(function(data){
				angular.copy(data, o.wines);
			})
			)

	
	};

	o.voteUp = function(wine){
		
		return $http.put('/wines/' + wine.id + '/vote.json')
    	.success(function(data){
      	wine.vote += 1;
    });
	}

	o.voteDown = function(wine){
		return $http.put('/wines/' + wine.id + '/vote.json')
    	.success(function(data){
      	wine.vote -= 1;
    });
	}

	o.findWineries = function(varietal) {
		return $http.get('/winerysearches/'+varietal+'.json').success(function(data){
			userWines = [];
			wineryArray = [];
			
			// for (i = 0; i < o.wines.length; i++){
			// 	userWines.push(o.wines[i].varietal)
			// }
			// for (i = 0; i < data[0].lists.length; i++){
				
			// 	for (j = 0; j < data[0].lists[i].varietals.length; j++){
					
			// 		if (data[0].lists[i].varietals[j].name == userWines[0]){
						
			// 			// console.log("Shit Works!")
			// 			wineryArray.push(data[0].lists[i])
			// 				}
			// 		}

			// 	}
			angular.copy(data[0].lists, o.wineries);
		});
	};


	return o;
	}
])

mkSomm.factory('wineries', ['$http', function($http){
	var o = {
		wineries: []
	};

	o.getAll = function() {
		return $http.get('http://http://protected-bastion-2209.herokuapp.com/').success(function(data){
			console.log(data)
			angular.copy(data, o.wineries);
		});
	};


	}
])



