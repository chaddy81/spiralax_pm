App.Controllers.ToDos = Backbone.Controller.extend({
    routes: {
        "to_dos/:id":            "edit",
        "":              "index",
        "new":                      "newDoc"
    },
    
    edit: function(id) {
        var doc = new ToDo({ id: id });
        doc.fetch({
            success: function(model, resp) {
                new App.Views.Edit({ model: doc });
            },
            error: function() {
                new Error({ message: 'Could not find that to_do.' });
                window.location.hash = '#';
            }
        });
    },
    
    index: function() {
        $.getJSON('/to_dos', function(data) {
            if(data) {
                var to_dos = _(data).map(function(i) { return new ToDo(i); });
                new App.Views.Index({ to_dos: to_dos });
            } else {
                new Error({ message: "Error loading to do." });
            }
        });
    },
    
    newDoc: function() {
        new App.Views.Edit({ model: new ToDo() });
    }
});