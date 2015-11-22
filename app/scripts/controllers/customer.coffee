'use strict'

angular.module('partypay').controller 'CustomerCtrl', ($scope, $http, ENV, $cookieStore, $location) ->

  $scope.showTopUpBox = false

  $scope.goToTopUp = ->
    $scope.showTopUpBox = true

  $scope.topup = (amount) ->
    params = { id: $scope.user.id, amount: $scope.toppedAmount }
    console.log
    $http.post(ENV.apiEndpoint + "/topup", params)
      .success (data) ->
        $scope.user.amount = parseFloat($scope.user.amount) + parseFloat(amount)
        console.log "Success!"
        $scope.showTopUpBox = false
        $scope.toppedAmount = 0
      .error (data) ->
        console.log "Error!"

  $scope.goToMainPage = ->
    $location.path "/"

  $scope.logout = ->
    $cookieStore.remove('currentUser')
    $scope.goToMainPage()

  $scope.goToMainPage() unless $cookieStore.get('currentUser')

  $scope.getUser = ->
    email = $cookieStore.get('currentUser')
    $http.post(ENV.apiEndpoint + "/get_user_by_email", { email: email })
      .success (user) ->
        $scope.loadUser(user)
      .error (data) ->
        console.log data.error

  $scope.loadUser = (user) ->
    $scope.user = user

  $scope.getUser() unless $scope.user

