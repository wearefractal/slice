#>> Setup 

should = require 'should'

#>> When I create slice with no args

try
  slice = require('../domain/slice')()

#>> Then it should throw an error

catch err
  err.message.should.equal 'slice: no dir specified'  



#>> When I create slice with a dir path
# default env: 'production'

slice = require('../domain/slice') __dirname

#>> Then 

slice.should.have.property 'do' # from uselessJS



#>> Given a global RZR.ENV of 'slice-test'

global.RZR = {}
global.RZR.ENV = 'slice-test'

#>> When I create slice with a dir path

slice = require('../domain/slice') __dirname

#>> Then 

slice.should.have.property 'load' # from modulate


