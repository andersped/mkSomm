var mkSomm = angular.module('mkSomm', ['ui.router', 'templates']) 

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
			url: '/pairings'
			templateUrl: 'food_pairings/_pairings.html',
			controller: 'PairingSearchCtrl'
		})
  $urlRouterProvider.otherwise('home');
}])