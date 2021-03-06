
angular.module('todoApp').factory('Task', function($resource) {
  var Task;
  return Task = (function() {

    function Task(taskListId) {
      this.service = $resource('/api/task_lists/:task_list_id/tasks/:id', {
        task_list_id: taskListId,
        id: '@id'
      });
    }

    Task.prototype.create = function(attrs) {
      new this.service({
        task: attrs
      }).$save(function(task) {
        return attrs.id = task.id;
      });
      return attrs;
    };

    Task.prototype.all = function() {
      return this.service.query();
    };

    return Task;

  })();
});
