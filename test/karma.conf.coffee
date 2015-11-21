module.exports = (config) ->
  config.set
    basePath: '../'
    frameworks: [
      "jasmine"
    ]
    files: [
      # bower:js
      'bower_components/angular/angular.js'
      'bower_components/angular-resource/angular-resource.js'
      'bower_components/angular-route/angular-route.js'
      'bower_components/angular-mocks/angular-mocks.js'
      # endbower
      # bower:coffee
      # endbower
      "app/scripts/**/*.coffee"
      "test/mock/**/*.coffee"
      "test/spec/**/*.coffee"
    ],

    exclude: [
    ]

    port: 8080

    # possible values: LOG_DISABLE || LOG_ERROR || LOG_WARN || LOG_INFO || LOG_DEBUG
    logLevel: config.LOG_INFO

    browsers: [
      "PhantomJS"
    ]

    plugins: [
      "karma-phantomjs-launcher",
      "karma-jasmine",
      "karma-coffee-preprocessor"
    ]
    autoWatch: true
    singleRun: false
    colors: true
    preprocessors: '**/*.coffee': ['coffee']
