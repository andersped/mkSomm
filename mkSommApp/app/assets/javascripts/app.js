var mkSomm = angular.module('mkSomm', ['ui.router']) 

mkSomm.config(['$stateProvider','$urlRouterProvider', function($stateProvider, $urlRouterProvider) {

  $stateProvider
    .state('home', {
      url: '/home',
      templateUrl: '/home/_home.html',
      controller: 'HomeCtrl'
    })
    .state('categories', {
    	url: '/cateory',
    	templateUrl: '/category/_category.html',
    	controller: 'CategorySearchCtrl'
    })
  $urlRouterProvider.otherwise('home');
}])