var mkSomm = angular.module('mkSomm', ['ui.router', 'templates', 'Devise', 'ngAnimate', 'uiGmapgoogle-maps']) 

mkSomm.config(function(uiGmapGoogleMapApiProvider) {
    uiGmapGoogleMapApiProvider.configure({
           key: 'AIzaSyDk0DJPLTdPM8weqWab1DZTjHkg5Fq5kTY',
           v: '3.20', 
           libraries: 'weather,geometry,visualization'
    });
})

mkSomm.config(['$stateProvider','$urlRouterProvider', function($stateProvider, $urlRouterProvider) {

  $stateProvider
    .state('home', {
      url: '/home',
      templateUrl: '/home/_home.html',
      controller: 'HomeCtrl'
    })
    .state('category', {
    	url: '/category',
    	templateUrl: '/category/_category.html',
    	controller: 'CategorySearchCtrl',
    	resolve: {
  			categoryPromise: ['categories', function(categories){
    		  return categories.getAll();
  			}]
			}
    })
    .state('/pairings', {
			url: '/pairings',
			templateUrl: 'food_pairings/_pairings.html',
			controller: 'FoodSearchCtrl',
      resolve: {
        foodGroupPromise: ['foodGroups', function(foodGroups){
          return foodGroups.getAll();
        }]
      }
		})
    .state('/wines', {
      url: '/wines',
      templateUrl: 'wines/_wines.html',
      controller: 'WineSearchCtrl'
    })
    .state('/user', {
      url: '/user',
      templateUrl: 'users/_user.html',
      controller: 'UserCtrl',
      resolve: {
        usersPromise: ['users', function(users){
          // console.log(users.getAll())
          return users.getAll();
        }]
      }
    })
    .state('login', {
      url: '/login',
      templateUrl: 'auth/_login.html',
      controller: 'AuthCtrl',
      onEnter: ['$state', 'Auth', function($state, Auth) {
        Auth.currentUser().then(function(){
          $state.go('home');
        })
      }]
    })
    .state('register', {
      url: '/register',
      templateUrl: 'auth/_register.html',
      controller: 'AuthCtrl',
      onEnter: ['$state', 'Auth', function($state, Auth) {
        Auth.currentUser().then(function(){
          $state.go('home');
        })
      }]
    });

  $urlRouterProvider.otherwise('home');
}])

mkSomm.run(function($rootScope) {
    $rootScope.wineList=false;
})