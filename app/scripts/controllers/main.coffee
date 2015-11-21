'use strict'

angular.module('partypay').controller 'MainCtrl', ($scope, $http) ->
  $scope.users = []
  $http.get("http://localhost:9000/users").success (users) ->
    $scope.users = users
