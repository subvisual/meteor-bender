Package.describe({
  name: 'gabrielpoca:bender',
  summary: 'Page transitions with bender',
  version: '0.0.5',
  git: 'https://github.com/groupbuddies/meteor-bender'
});

Package.onUse(function(api) {
  api.versionsFrom('METEOR@1');

  api.use([
    'coffeescript',
    'percolate:velocityjs@1.0.0'
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
