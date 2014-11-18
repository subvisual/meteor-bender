class @SlideHorizontal
  @INSERT: { slideLeft: '100%', slideRight: '-100%' }
  @REMOVE: { slideLeft: '-100%', slideRight: '100%' }
  @animations: ['slideLeft', 'slideRight']

  animationDuration: 600

  constructor: (@animation) ->

  insertElement: (node, next) =>
    start = @constructor.INSERT[@animation]
    $.Velocity.hook(node, 'translateX', start)
    $(node).insertBefore(next)
    $(node).velocity {translateX: [0, start]},
      duration: @animationDuration,
      easing: 'ease-in-out',
      queue: false

  removeElement: (node) =>
    end = @constructor.REMOVE[@animation]
    $(node).velocity {translateX: end},
      duration: @animationDuration,
      easing: 'ease-in-out',
      queue: false,
      complete: () ->
        $(node).remove()
