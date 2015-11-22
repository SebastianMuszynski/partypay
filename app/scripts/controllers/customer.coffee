'use strict'

angular.module('partypay').controller 'CustomerCtrl', ($scope, $http, ENV, $location) ->

  $scope.amount = 3317.63
  $scope.toppedAmount = 0

  $scope.goToTopUp = ->
    $location.path "/topup"

  $scope.topup = ->
    console.log("Topped up with " + $scope.toppedAmount)
