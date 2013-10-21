App.factory 'Procedure', ['$resource', ($resource) ->
  $resource '/procedures/:id', id: '@id'
]
