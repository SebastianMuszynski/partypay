'use strict'

angular.module('partypay').controller 'SignUpCtrl', ($scope, $http, ENV, $location, $cookieStore) ->

  $scope.user  = {}
  $scope.error = false

  $scope.goToCustomer = ->
    $location.path "/customer"

  $scope.signup = ->
    u = $scope.user
    params =
      email:                 u.email
      password:              u.password
      password_confirmation: u.password_confirmation

    $http.post(ENV.apiEndpoint + "/signup", params)
      .success (user) ->
        $scope.error = false
        $cookieStore.put('currentUser', user.email)
        $scope.goToCustomer()
      .error (data) ->
        console.log "Error"
        console.log data
        $scope.error = true

  $scope.goToLogIn = ->
    $location.path "/login"
