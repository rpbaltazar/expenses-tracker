@expensesTracker.controller 'RegistriesIndexCtrl', ['$scope', '$location', '$http', ($scope, $location, $http) ->
  $scope.registries = []
  $http.get('./api/v1/registries').success( (data) ->
    $scope.registries = data
  )

  $scope.viewRegistry = (id) ->
    $location.url "/registries/#{id}"

  $scope.newRegistry = ->
    $location.url "/registries/new"
]
