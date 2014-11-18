class @SlideOver
  @INSERT = { slideOverUp: '100%', slideOverDown: '-100%' }
  @animations = ['slideOverUp', 'slideOverDown']

  animationDuration: 600

  constructor: (@animation) ->

  insertElement: (node, next) =>
    start = @constructor.INSERT[@animation]
    $(node).insertBefore(next)
    $(node).velocity { translateY: [0, start] },
      duration: @animationDuration,
      easing: 'ease-in-out',
      queue: false

  removeElement: (node) =>
    # siteTimeout is a hack to only start the remove after the insert
    setTimeout =>
        $('.velocity-animating').promise().done =>
          $(node).remove()
      , @animationDuration
