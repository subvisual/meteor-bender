class CrossFade
  @INSERT: { fadeIn: 1, fadeOut: 0 }
  @REMOVE: { fadeIn: 0, fadeOut: 1 }
  @animations: ['fadeIn', 'fadeOut']

  animationDuration: 600

  constructor: (@animation) ->

  insertElement: (node, next) =>
    start = @constructor.INSERT[@animation]
    $(node).insertBefore(next)
    $(node).velocity 'fadeIn',
      duration: @animationDuration,
      easing: 'ease-in-out',
      queue: false

  removeElement: (node) =>
    end = @constructor.REMOVE[@animation]
    $(node).velocity 'fadeOut',
      duration: @animationDuration,
      easing: 'ease-in-out',
      queue: false,
      complete: () ->
        $(node).remove()

@Bender.animations.push CrossFade
