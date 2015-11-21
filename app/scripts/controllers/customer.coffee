'use strict'

angular.module('partypay').controller 'CustomerCtrl', ($scope, $http, ENV, $location) ->

  $scope.amount = 3317.63

  $scope.topup = ->
    $location.path "/topup"
