import { Meteor } from 'meteor/meteor'
#import { Foo } from '../api/foo' 

Meteor.startup ->
  ###
  @Foo.insert 
    title: "momo" 
    designation: "mofo"
  ###