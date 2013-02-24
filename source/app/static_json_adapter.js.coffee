#
# Loads all content from static JSON array, and can do simple finds against it.
#
App.StaticJSONAdapter = DS.Adapter.extend

  serializer: DS.JSONSerializer.extend()

  urlPrefix: '/'

  url: (type) ->
    "#{@urlPrefix}#{@pluralRoot type}.json"

  root: (type) ->
    @serializer.rootForType type

  pluralRoot: (type) ->
    @serializer.pluralize @root(type)

  find: (store, type, id) ->
    @fetchAll type, (data) =>
      results = data[@pluralRoot type]
      if results
        single = Ember.A(results).findProperty('id', id)

      if single
        data = {}
        data[@root(type)] = single

        @didFindRecord store, type, data, id

  findAll: (store, type) ->
    @fetchAll type, (data) =>
      if data
        @didFindAll store, type, data

  fetchAll: (type, success)->
    $.ajax
      url         : @url(type)
      dataType    : "json"
      success     : success
