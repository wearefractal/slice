#>> Setup 

path = require 'path'
should = require 'should'

#>> Given some globals

global.rzr = {}
rzr.ENV = 'production'
rzr.APP_ROOT = path.resolve __dirname

#>> When I create slice 

slice = require '../slice'

#>> Then 

slice.should.have.property 'do' # from uselessJS

#>> Cleanup

global.rzr = null
