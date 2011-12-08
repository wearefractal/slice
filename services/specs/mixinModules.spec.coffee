#>> Setup 

should = require 'should'
mixinModules = require '../mixinModules'

#>> Given some modules

modules = ['useless']

#>> When I pass in some modules

slice = mixinModules modules

#>> Then 

slice.should.have.property 'do' # from uselessJS
