#>> Setup 

should = require 'should'
mixinModules = require '../mixinModules'

#>> Given some modules

modules = ['useless']

#>> When I pass in some modules

mixinModules modules, (slice) ->

#>> Then 

  slice.should.have.property 'do' # from uselessJS
