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

  Router.route('/left', {
    name: 'leftPage'
  });

  Template.layout.rendered = function() {
    Bender.initialize(this.find('#content-container'))
  };

  Template.firstPage.events({
    'click #goRight': function() {
      IronBender.go('/right', {}, { animation: 'slideRight' });
    },
    'click #goLeft': function() {
      IronBender.go('/left', {}, { animation: 'slideLeft' });
    }
  });

  Template.leftPage.events({
    'click #back': function() {
      IronBender.go('/', {}, { animation: 'slideRight' });
    }
  });

  Template.rightPage.events({
    'click #back': function() {
      IronBender.go('/', {}, { animation: 'slideLeft' });
    }
  });
}
