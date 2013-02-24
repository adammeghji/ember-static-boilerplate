PostsApp.PostsShowRoute = Ember.Route.extend
  model: (params) ->
    PostsApp.Post.find(params.post_id)
