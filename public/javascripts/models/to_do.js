var ToDo = Backbone.Model.extend({
    url : function() {
      var base = 'localhost:3000/projects/37/';
      if (this.isNew()) return base;
      return base + (base.charAt(base.length - 1) == '/' ? '' : '/') + this.id;
    }
});