#>> Setup

should = require 'should'

#>> When we require slice and Modulate is in the node_modules dir

slice = require '../slice'

#>> Then

slice.should.have.property 'load'

