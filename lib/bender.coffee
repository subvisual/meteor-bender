class Bender
  @currentAnimation: 'none'

  @initialize: (@el) ->
    @el._uihooks =
      insertElement: _.bind(@insertElement, this)
      removeElement: _.bind(@removeElement, this)

  @animate: (animation) =>
    @currentAnimation = animation

  @insertElement: (node, next) ->
    if @currentAnimation in SlideHorizontal.animations
      SlideHorizontal.insertElement(node, next, @currentAnimation)
    else if @currentAnimation in SlideVertical.animations
      SlideVertical.insertElement(node, next, @currentAnimation)
    else if @currentAnimation in None.animations
      None.insertElement(node, next)
    else
      throw new Error("#{@currentAnimation} animation doesn't exist!")

  @removeElement: (node) ->
    if @currentAnimation in SlideHorizontal.animations
      SlideHorizontal.removeElement(node, @currentAnimation)
    else if @currentAnimation in SlideVertical.animations
      SlideVertical.removeElement(node)
    else if @currentAnimation in None.animations
      None.removeElement(node)
    else
      throw new Error("#{@currentAnimation} animation doesn't exist!")
