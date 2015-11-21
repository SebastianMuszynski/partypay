'use strict'

describe 'Controller: MainCtrl', ->

  beforeEach module 'partypay'

  MainCtrl = {}
  scope    = {}

  beforeEach inject ($controller, $rootScope) ->
    scope    = $rootScope.$new()
    MainCtrl = $controller 'MainCtrl', {}
