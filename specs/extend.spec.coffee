#>> Setup

should = require 'should'

#>> Given we have slice available and a class we want to dynamically add methods to

slice = require '../slice'

class Awesome 
  besto:  ->  "wah"

class Irrelevant
  tester: -> "blah"
  testMeToo: -> "mah"
#>> When we try to mixin the methods from one class into another
a = new Awesome()
slice.extend a, new Irrelevant()

#>> Then the property should be added
a.should.have.property "tester"
a.should.have.property "testMeToo"
a.tester().should.equal "blah"
a.testMeToo().should.equal "mah"
