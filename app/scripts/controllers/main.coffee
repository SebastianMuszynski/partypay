'use strict'

angular.module('partypay').controller 'MainCtrl', ($scope, $http, ENV) ->
  $scope.users = []
  $http.get(ENV.apiEndpoint + "/users").success (users) ->
    $scope.users = users
