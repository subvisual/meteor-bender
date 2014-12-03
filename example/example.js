if (Meteor.isClient) {
  Router.configure({
    layoutTemplate: 'layout'
  });

  Router.route('/', {
    name: 'firstPage'
  });

  Router.route('/right', {
    name: 'rightPage'
  });

  Router.route('/over_up', {
    name: 'overUp'
  });

  Router.route('/over_down', {
    name: 'overDown'
  });

  Router.route('/left', {
    name: 'leftPage'
  });

  Router.route('/cross_fade', {
    name: 'crossFade'
  });

  Template.layout.rendered = function() {
    Bender.initialize(this.find('#content-container'))
  };

  Template.firstPage.events({
    'click #goRight': function() {
      Bender.go('/right', {}, { animation: 'slideLeft' });
    },
    'click #goLeft': function() {
      Bender.go('/left', {}, { animation: 'slideRight' });
    },
    'click #overDown': function() {
      Bender.go('/over_down', {}, { animation: 'slideOverDown' });
    },
    'click #overUp': function() {
      Bender.go('/over_up', {}, { animation: 'slideOverUp' });
    },
    'click #crossFade': function() {
      Bender.go('/cross_fade', {}, { animation: 'fadeIn' });
    }
  });

  Template.overDown.events({
    'click #back': function() {
      Bender.go('/', {}, { animation: 'slideOverDownClose' });
    }
  });

  Template.overUp.events({
    'click #back': function() {
      Bender.go('/', {}, { animation: 'slideOverUpClose' });
    }
  });

  Template.leftPage.events({
    'click #back': function() {
      Bender.go('/', {}, { animation: 'slideLeft' });
    }
  });

  Template.rightPage.events({
    'click #back': function() {
      Bender.go('/', {}, { animation: 'slideRight' });
    }
  });

  Template.crossFade.events({
    'click #back': function() {
      Bender.go('/', {}, { animation: 'fadeOut' });
    }
  });
}
