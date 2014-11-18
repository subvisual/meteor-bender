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

  Template.layout.rendered = function() {
    Bender.initialize(this.find('#content-container'))
  };

  Template.firstPage.events({
    'click #goRight': function() {
      IronBender.go('/right', {}, { animation: 'slideLeft' });
    },
    'click #goLeft': function() {
      IronBender.go('/left', {}, { animation: 'slideRight' });
    },
    'click #overDown': function() {
      IronBender.go('/over_down', {}, { animation: 'slideOverDown' });
    },
    'click #overUp': function() {
      IronBender.go('/over_up', {}, { animation: 'slideOverUp' });
    }
  });

  Template.overDown.events({
    'click #back': function() {
      IronBender.go('/', {}, { animation: 'slideOverDownClose' });
    }
  });

  Template.overUp.events({
    'click #back': function() {
      IronBender.go('/', {}, { animation: 'slideOverUpClose' });
    }
  });

  Template.leftPage.events({
    'click #back': function() {
      IronBender.go('/', {}, { animation: 'slideLeft' });
    }
  });

  Template.rightPage.events({
    'click #back': function() {
      IronBender.go('/', {}, { animation: 'slideRight' });
    }
  });
}
