Package.describe({
  name: 'gabrielpoca:bender',
  summary: 'Page transitions with bender',
  version: '0.1.5',
  git: 'https://github.com/groupbuddies/meteor-bender'
});

Package.onUse(function(api) {
  api.versionsFrom('METEOR@1');

  api.use([
    'coffeescript',
    'percolate:velocityjs@1.0.0'
  ], 'client');

  api.addFiles([
    'lib/iron_blender.coffee',
    'lib/animations/none.coffee',
    'lib/animations/slide_horizontal.coffee',
    'lib/animations/slide_over.coffee',
    'lib/animations/slide_over_close.coffee',
    'lib/bender.coffee'
  ], 'client');

  api.export('Bender', 'client');
  api.export('IronBender', 'client');
});
