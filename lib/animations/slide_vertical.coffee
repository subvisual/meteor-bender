class @SlideVertical
  @ANIMATION_DURATION: 600
  @INSERT_START = { slideUp: '100%', slideDown: '-100%' }

  @animations = ['slideUp', 'slideDown']

  @insertElement: (node, next, animation) =>
    start = @INSERT_START[animation]
    $(node).insertBefore(next)
    $(node).velocity { translateY: [0, start] },
      duration: @ANIMATION_DURATION,
      easing: 'ease-in-out',
      queue: false

  @removeElement: (node) =>
    # siteTimeout is a hack to only start the remove after the insert
    setTimeout =>
        $('.velocity-animating').promise().done =>
          $(node).remove()
      , @ANIMATION_DURATION
