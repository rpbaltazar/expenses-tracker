@expensesTracker.controller 'RegistriesCtrl',
['$scope', '$location', '$http', ($scope, $location, $http) ->
  $scope.registries = []
  $http.get('./api/v1/registries').success( (data) ->
    $scope.registries = data
  )
]
