#= require_self
#= require_tree ./models
#= require_tree ./controllers
#= require_tree ./routes
#= require_tree ./views
#= require_tree ./templates
#= require      ./routes

window.PostsApp = Ember.Application.create()

PostsApp.Store = DS.Store.extend
  revision: 13
  adapter: DS.FixtureAdapter.create()
