# Page transitions with Bender

![bender](http://madeira.hccanet.org/project2/michels_p2/website%20pics/bender.jpg)

To use Bender you need to initialie it with the pages container, as an example

```
Template.layout.rendered = ->
  Bender.initialize(@find('#content-container'))
```

To change the animation you need to call the animate method

```
Bender.animate('slideRight')
```

Using iron:router you can use IronMime.go instead of Router.go and send the animation as an option

```
Bender.go('trips.show', { _id: @id }, { animation: 'slideDown' })
```

# TODO

* More transitions.
* Configurations values.
