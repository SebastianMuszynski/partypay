'use strict'

angular
  .module 'partypay', [
    'config'
    'ngResource'
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

