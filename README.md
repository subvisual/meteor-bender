# Page transitions with Bender

Bender is a package that empowers your application with page transitions.

![bender](http://madeira.hccanet.org/project2/michels_p2/website%20pics/bender.jpg)

# Dependencies

* Meteor 1.0

# Getting Started

To install Bender add it to meteor

```
meteor add gabrielpoca:bender
```

To use Bender you need to initialize it with the page container as an argument.

```
Template.layout.rendered = ->
  Bender.initialize(@find('#content-container'))
```

## Animating elements

By default Bender will have no animation after being initialized. You can change
this by calling the `animate` function.

```
Bender.animate('slideRight')
```

It is also possible to use the
[`Iron.Router`](http://eventedmind.github.io/iron-router/), but instead of
`Router.go` use `Bender.go` and pass in the animation as an option. Everything
else should work as expected with the `Iron.Router`.

```
Bender.go('trips.show', { _id: @id }, { animation: 'slideDown' })
```

### List of available animations

|Name      |Description|
|----------|-----------------------------|
|slideDown |Slides the current page down |
|slideUp   |Slides the current page up   |
|slideLeft |Slides the current page left |
|slideRight|Slides the current page right|
|none      |Removes animations           |

# Roadmap

[ ] More transition animations
[ ] Make bender more configurable (animation duration, easing, etc...)

# License

The MIT License (MIT)

Copyright (c) 2014-2015 GB - Software as a Service, Lda.

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
