'use strict'

angular
  .module 'partypay', [
    'config'
    'ngResource'
    'ngRoute'
  ]
  .config ($routeProvider) ->
    $routeProvider
      .when '/login',
        templateUrl:  'views/main.html'
        controller:   'MainCtrl'
      .when '/signup',
        templateUrl:  'views/signup.html'
      .otherwise
        redirectTo: '/login'

