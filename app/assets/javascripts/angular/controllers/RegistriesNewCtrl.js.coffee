@expensesTracker.controller 'RegistriesNewCtrl', ['$scope', '$location', '$http', ($scope, $location, $http) ->
  $scope.createNew = ->
    $http.post('./api/v1/registries', $scope.registry)
      .success (
        (data) ->
          console.log 'added successfuly'
          $location.url "/registries"
      )
      .error (
        (data) ->
          $scope.errors = data
      )

]
