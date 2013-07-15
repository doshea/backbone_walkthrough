class Raffler.Routers.Entries extends Backbone.Router
  routes:
    '': 'index'
    'entries/:id': 'show'

  initialize: ->
    @collection = new Raffler.Collection.Entries()
    @collection.fetch()

  index: ->
    view = new Raffler.Views.EntriesIndex()
    $('#container').html(view.render().el)

  show: (id) ->
    alert "Entry #{id}"

