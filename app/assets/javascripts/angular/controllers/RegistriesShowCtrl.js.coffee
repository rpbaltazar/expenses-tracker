@expensesTracker.controller 'RegistriesShowCtrl', ['$scope', '$http', '$routeParams', ($scope, $http, $routeParams) ->
  $scope.registries = []
  $http.get("./api/v1/registries/#{$routeParams.id}").success( (data) ->
    $scope.registry = data
  )
]
