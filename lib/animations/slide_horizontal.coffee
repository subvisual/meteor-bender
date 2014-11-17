class @SlideHorizontal
  @ANIMATION_DURATION: 600
  @INSERT_START = { slideLeft: '100%', slideRight: '-100%' }
  @REMOVE_END = { slideLeft: '-100%', slideRight: '100%' }

  @animations = ['slideLeft', 'slideRight']

  @insertElement: (node, next, animation) =>
    start = @INSERT_START[animation]
    $.Velocity.hook(node, 'translateX', start)
    $(node).insertBefore(next)
    $(node).velocity {translateX: [0, start]},
      duration: @ANIMATION_DURATION,
      easing: 'ease-in-out',
      queue: false

  @removeElement: (node, animation) =>
    end = @REMOVE_END[animation]
    $(node).velocity {translateX: end},
      duration: @ANIMATION_DURATION,
      easing: 'ease-in-out',
      queue: false,
      complete: () ->
        $(node).remove()
