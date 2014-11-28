# Page transitions with Bender

Bender is a package that empowers your application with page transitions. There is an example app and you can click [here](http://benderdemo.meteor.com/) to see it in action.

![bender](http://madeira.hccanet.org/project2/michels_p2/website%20pics/bender.jpg)

# Dependencies

* Meteor 1.0

# Getting Started

To install Bender add it to meteor

```
meteor add gabrielpoca:bender
```

To use Bender you need to initialize it with the page container as an argument.

```js
Template.layout.rendered = function() {
  Bender.initialize(this.find('#content-container'));
};
```

You also need some css to make the animations work. Most animations need your pages to use `position: absolute`. Here is some css to get you started. You can see the app on the example folder for more information.

```css
.layout {
  height: 100%;
  /* to prevent the scrollbars from showing during an animation */
  overflow: hidden;
  width: 100%;
}

.page {
  height: 100%;
  left: 0;
  position: absolute;
  top: 0;
  vertical-align: top;
  width: 100%;
}

/* to make sure the page being animated is on top */
.velocity-animating {
  z-index: 99;
}
```

## Animating elements

By default Bender will have no animation after being initialized. You can change
this by calling the `animate` function.

```js
Bender.animate('slideRight');
```

It is also possible to use with
[`Iron.Router`](http://eventedmind.github.io/iron-router/), but instead of
`Router.go` use `Bender.go` and pass in the animation as an option. Everything
else should work as expected with the `Iron.Router`.

```js
Bender.go('trips.show', { _id: this.id }, { animation: 'slideDown' });
```

### List of available animations

|Name          |Description|
|--------------|------------------------------------------------|
|slideLeft     |Slides the current page left                    |
|slideRight    |Slides the current page right                   |
|slideOverDown |Slides the new page over the current from bellow|
|slideOverUp   |Slides the new page over the current from above |
|fadeIn        |Slides the new page over the current from above |
|fadeOut       |Slides the new page over the current from above |
|none          |Removes animations                              |

# Roadmap

- [ ] More transition animations
- [ ] Make bender more configurable (animation duration, easing, etc...)

# License
Bender is © 2014-2015 GB-Software As A Service, Lda.
It is free software and may be redistributed under the terms specified in the
[LICENSE](LICENSE) file.
