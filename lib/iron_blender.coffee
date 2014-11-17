Meteor.startup ->
  if Router
    class @IronBender extends Router
      @go: (routeNameOrPath, params, options) ->
        if options && options.animation?
          Bender.animate(options.animation)
          delete options.animation

        super(routeNameOrPath, params, options)
