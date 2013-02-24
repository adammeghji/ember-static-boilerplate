#= require_self
#= require_tree ./models
#= require_tree ./controllers
#= require_tree ./routes
#= require_tree ./views
#= require_tree ./templates
#= require      ./routes
#= require      ./static_json_adapter

window.A = window.PostsApp = Ember.Application.create
  Store: DS.Store.extend
    revision: 11
    adapter: 'PostsApp.StaticJSONAdapter'
