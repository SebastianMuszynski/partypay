'use strict'

angular.module('partypay').controller 'LoginCtrl', ($scope, $http, ENV) ->

  $scope.user  = {}
  $scope.error = false

  $scope.login = ->
    $http.post(ENV.apiEndpoint + "/login", $scope.user)
      .success (user) ->
        console.log user
        $scope.error = false
      .error (data) ->
        console.log data.error
        $scope.error = true

