'use strict'

angular.module('partypay').controller 'LoginCtrl', ($scope, $http, ENV, $location) ->

  $scope.user  = {}
  $scope.error = false

  $scope.login = ->
    $http.post(ENV.apiEndpoint + "/login", $scope.user)
      .success (user) ->
        console.log user
        $scope.error = false
        $location.path "/customer"
      .error (data) ->
        console.log data.error
        $scope.error = true

  $scope.goToSignUp = ->
    $location.path "/signup"
