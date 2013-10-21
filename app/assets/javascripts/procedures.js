angular.module('medditJrubyTest').factory('Procedure', function($resource) {
  var Procedure;
  return Procedure = (function() {
    
    function Procedure(procedureListId) {
      this.service = $resource('/procedure_lists/:task_list_id/tasks/:id', {
        task_list_id: taskListId,
        id: '@id'
      });
    }
    
    Procedure.prototype.create = function(attrs) {
      new this.service({
        task: attrs
      }).$save(function(task) {
        return attrs.id = task.id;
      });
      return attrs;
    };
    
    Procedure.prototype.all = function() {
      return this.service.query();
    };
    
    return Procedure;
    
  })();
});

