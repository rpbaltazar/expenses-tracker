@expensesTracker = angular.module('expensesTracker', ['ngRoute'])

@expensesTracker.config(['$routeProvider', ($routeProvider) ->
  $routeProvider.
    when('/registries', {
      templateUrl: '/assets/registries/index.html',
      controller: 'RegistriesIndexCtrl'
    }).
    when('/registries/:id', {
      templateUrl: '/assets/registries/show.html',
      controller: 'RegistriesShowCtrl'
    }).
    otherwise({
      templateUrl: '/assets/home.html',
      controller: 'HomeCtrl'
    })
])
