angular.module('medditJrubyTest').factory 'Procedure', ($resource) ->
  class Procedure
    constructor: (procedureListId) ->
      @service = $resource('/procedure_lists/:task_list_id/tasks/:id',
        {task_list_id: taskListId, id: '@id'})

    create: (attrs) ->
      new @service(task: attrs).$save (task) ->
        attrs.id = task.id
      attrs

    all: ->
      @service.query()
