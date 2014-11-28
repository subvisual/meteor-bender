class Bender
  @animations: [SlideHorizontal, SlideOver, None, SlideOverClose, CrossFade]
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

  @go: (routeNameOrPath, params, options) ->
    if options && options.animation?
      Bender.animate(options.animation)
      delete options.animation

    Router.go(routeNameOrPath, params, options)

