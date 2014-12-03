class None
  @animations = ['none']

  insertElement: (node, next) =>
    $(node).insertBefore(next)

  removeElement: (node) =>
    $(node).remove()

@Bender.animations.push None
