@expensesTracker = angular.module('expensesTracker', ['ngRoute'])

@expensesTracker.config(['$routeProvider', ($routeProvider) ->
  $routeProvider.
    when('/registries', {
      templateUrl: '/assets/registries/index.html',
      controller: 'RegistriesCtrl'
    }).
    otherwise({
      templateUrl: '/assets/home.html',
      controller: 'HomeCtrl'
    })
])
