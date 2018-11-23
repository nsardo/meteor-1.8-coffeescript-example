###
@author Nicholas Sardo <gcc.programmer@gmail.com>
©2018 
###

import { Template } from 'meteor/templating'
import { Meteor } from 'meteor/meteor'
import './main.coffee'

Template.hello.onCreated =
  Session.setDefault 'counter', 0

Template.hello.helpers
  counter: -> Session.get 'counter'
  records: -> Session.get 'records'

Template.hello.events
  'click button#click1': -> 
    console.log Session.get 'counter'
    Session.set 'counter', Session.get('counter') + 1

  'click button#click2': ->
    #Session.set 'records', Meteor.call 'returnFoo'
    Meteor.call 'returnFoo', (err, result) ->
      console.error('cb err ', err) if err
      console.log('result is ', result)
      Session.set('records', result.title)
