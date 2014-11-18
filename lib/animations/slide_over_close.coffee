class @SlideOverClose
  @REMOVE = { slideOverUpClose: '100%', slideOverDownClose: '-100%' }
  @animations = ['slideOverUpClose', 'slideOverDownClose']

  animationDuration: 600

  constructor: (@animation) ->

  insertElement: (node, next) =>
    $(node).insertBefore(next)

  removeElement: (node) =>
    start = @constructor.REMOVE[@animation]
    $(node).velocity { translateY: [start, 0] },
      duration: @animationDuration,
      easing: 'ease-in-out',
      queue: false
      complete: ->
        $(node).remove()
