'use strict'

angular.module('partypay').controller 'LoginCtrl', ($scope, $http, ENV, $location, $cookieStore) ->

  $scope.user  = {}
  $scope.error = false

  $scope.goToCustomer = ->
    $location.path "/customer"

  $scope.login = ->
    $http.post(ENV.apiEndpoint + "/login", $scope.user)
      .success (user) ->
        $cookieStore.put('currentUser', $scope.user.email)
        $scope.error = false
        $scope.goToCustomer()
      .error (data) ->
        console.log data.error
        $scope.error = true

  $scope.goToSignUp = ->
    $location.path "/signup"

  $scope.goToCustomer() if $cookieStore.get('currentUser')
