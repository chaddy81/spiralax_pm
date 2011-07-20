// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
var App = {
    Views: {},
    Controllers: {},
    init: function() {
        new App.Controllers.ToDos();
        Backbone.history.start();
    }
};