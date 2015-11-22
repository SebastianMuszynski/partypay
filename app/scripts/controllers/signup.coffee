'use strict'

angular.module('partypay').controller 'SignUpCtrl', ($scope, $http, ENV, $location) ->

  $scope.user  = {}
  $scope.error = false

  $scope.signup = ->
    $http.post(ENV.apiEndpoint + "/signup", $scope.user)
      .success (user) ->
        console.log user
        $scope.error = false
      .error (data) ->
        console.log data.error
        $scope.error = true

  $scope.goToLogIn = ->
    $location.path "/login"
