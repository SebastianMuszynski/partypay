'use strict'

angular.module('partypay').controller 'LoginCtrl', ($scope, $http, ENV) ->

  $scope.user = {}

  $scope.login = ->
    $http.post(ENV.apiEndpoint + "/login", $scope.user)
      .success (user) ->
        console.log user
      .error (data) ->
        console.log data.error

