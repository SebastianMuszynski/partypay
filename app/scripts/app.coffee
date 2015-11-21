'use strict'

angular
  .module 'partypay', [
    'ngResource',
    'ngRoute'
  ]
  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl:  'views/main.html'
        controller:   'MainCtrl'
        controllerAs: 'main'
      .otherwise
        redirectTo: '/'

