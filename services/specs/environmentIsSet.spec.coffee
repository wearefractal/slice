
#>> Given 

should = require 'should'
environmentIsSet = require '../environmentIsSet'

#>> When no rzr.ENV is set

#>> Then 

environmentIsSet (set) -> set.should.be.false

#>> When an rzr.ENV is set

global['RZR.ENV'] = "rzr"

#>> Then

environmentIsSet (set) -> set.should.be.true

