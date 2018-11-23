import { Mongo } from 'meteor/mongo'
import { Meteor } from 'meteor/meteor'
#import { Foo } from '../api/foo'
@Foo = new Mongo.Collection "foo"

Meteor.methods
  returnFoo: ->
    #result = Foo.find().fetch()
    result = Foo.findOne()
    console.log( 'foo is ', result)
    result