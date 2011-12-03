#>> Setup

should = require 'should'

#>> Given we have slice available and a class we want to dynamically add properties to

slice = require '../slice'

class Awesome 
  besto:  ->  console.log "wah"

#>> When we try to add a property dynamically
slice.include Awesome, isCool:true
a = new Awesome()

#>> Then the property should be added
a.should.have.property "isCool"
a.isCool.should.be.true
