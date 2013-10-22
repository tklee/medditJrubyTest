###
App.controller 'ProceduresCtrl', ['$scope', ($scope) ->
  $scope.message = "Procedures List"
]
###

# App.controller 'LandingsCtrl', ['$scope', 'Procedure', ($scope, Procedure) ->
#   $scope.procedures = Procedure.query() #query() means to return all Procedures, in angular
#   $scope.selectedProcedure = null
# 
#   # Set the selected Procedure to the one which was clicked
#   $scope.showProcedure = (procedure) ->
#     $scope.selectedProcedure = procedure
# ]

