PostsApp.PostsIndexRoute = Ember.Route.extend
  model: ->
    PostsApp.Post.find()
