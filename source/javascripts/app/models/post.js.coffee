PostsApp.Post = DS.Model.extend
  title: DS.attr 'string'

PostsApp.Post.FIXTURES = [
  id: 1
  title: 'Uniiverse is cool'
,
  id: 2
  title: 'Another post'
]
