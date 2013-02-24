App.PostsIndexRoute = Ember.Route.extend
  model: -> App.Post.find()
