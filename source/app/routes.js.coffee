App.Router = Ember.Router.extend
  enableLogging: true

  # location: 'history' # /posts instead of /#/posts

App.Router.map ->
  @resource "posts", ->
    @route "index",
    @route "show"
      path: "/:post_id"

  @route "about"
    path: "/about"

  @route "contact"
    path: "/contact"
