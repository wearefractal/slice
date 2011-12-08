#>> Setup 

should = require 'should'

#>> Given some globals

global.rzr = {}
rzr.ENV = 
  sliceModules: ["useless"]


#>> When I create slice 

slice = require '../slice'

#>> Then 

slice.should.have.property 'do' # from uselessJS
