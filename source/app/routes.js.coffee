App.Router = Ember.Router.extend
  enableLogging: true

App.Router.map ->
  @resource "posts", ->
    @route "index",
    @route "show"
      path: "/:post_id"

  @route "about"
    path: "/about"

  @route "contact"
    path: "/contact"
