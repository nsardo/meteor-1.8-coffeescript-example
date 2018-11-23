###
@author Nicholas Sardo <gcc.programmer@gmail.com
©2018
###

import { Mongo } from 'meteor/mongo'
import { Meteor } from 'meteor/meteor'
@Foo = new Mongo.Collection "foo"

Meteor.methods
  returnFoo: ->
    #result = Foo.find().fetch()
    result = Foo.findOne()
    console.log( 'foo is ', result)
    result