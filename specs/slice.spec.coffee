#>> Setup

should = require 'should'

#>> When we require slice and Modulate is in the node_modules dir

slice = require '../slice'

#>> Then

slice.should.have.property 'ok'
slice = ''

#>> When I set the global ENV var

global['RZR.ENV'] = 'spex.unit'

slice = require '../slice'

slice.should.have.property 'ok'
