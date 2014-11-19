class Bender
  @animations: [SlideHorizontal, SlideOver, None, SlideOverClose]
  @current: None

  @initialize: (@el) ->
    @current = new None
    @el._uihooks =
      insertElement: _.bind(@insertElement, this)
      removeElement: _.bind(@removeElement, this)

  @animate: (animation) =>
    item = _.find @animations, (item) =>
      animation in item.animations
    @current = new item(animation)

  @insertElement: (node, next) ->
    @current.insertElement(node, next)

  @removeElement: (node) ->
    @current.removeElement(node)
