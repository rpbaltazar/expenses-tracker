@expensesTracker.controller 'RegistriesNewCtrl', ['$scope', '$location', '$http', ($scope, $location, $http) ->
  $scope.createNew = ->
    $http.post('./api/v1/registries', $scope.registry)
      .success (
        (data) ->
          $location.url "/registries"
      )
      .error (
        (data) ->
          $scope.errors = data
      )

  setupUi = ->
    $('#date').datepicker(
      format: "dd/mm/yyyy",
      endDate: moment().format(),
      todayHighlight: true,
      autoclose: true,
    )

  setupUi()

]
