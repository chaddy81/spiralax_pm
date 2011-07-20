App.Views.Index = Backbone.View.extend({
    initialize: function() {
        this.to_dos = this.options.to_dos;
        this.render();
    },
    
    render: function() {
        if(this.to_dos.length > 0) {
            var out = "<h3><a href='#new'>Create New</a></h3><ul>";
            _(this.to_dos).each(function(item) {
                out += "<li><a href='#to_dos/" + item.id + "'>" + item.escape('title') + "</a></li>";
            });
            out += "</ul>";
        } else {
            out = "<h3>No documents! <a href='#new'>Create one</a></h3>";
        }
        $(this.el).html(out);
        $('#app').html(this.el);
    }
});