Package.describe({
  name: 'gabrielpoca:bender',
  summary: 'Page transitions wit bender',
  version: '0.0.1',
  git: 'git@github.com:gabrielpoca/meteor-bender.git'
});

Package.onUse(function(api) {
  api.use([
    'coffeescript',
    'percolate:velocityjs'
  ], 'client');

  api.addFiles([
    'lib/bender.coffee',
    'lib/iron_blender.coffee',
    'lib/animations/none.coffee',
    'lib/animations/slide_horizontal.coffee',
    'lib/animations/slide_vertical.coffee'
  ], 'client');

  api.export('Bender', 'client');
  api.export('IronBender', 'client');
});
