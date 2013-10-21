# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

# angular.module('medditJrubyTest').factory 'Procedure', ($resource) ->
#   class Procedure
#     constructor: (procedureListId) ->
#       @service = $resource('/procedure_lists/:task_list_id/tasks/:id',
#         {task_list_id: taskListId, id: '@id'})
# 
#     create: (attrs) ->
#       new @service(task: attrs).$save (task) ->
#         attrs.id = task.id
#       attrs
# 
#     all: ->
#       @service.query()
