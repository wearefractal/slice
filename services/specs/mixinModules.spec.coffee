#>> Setup 

should = require 'should'
mixinModules = require '../mixinModules'

#>> Given some modules

modules = ['should']

#>> When I pass in some modules

slice = mixinModules modules

#>> Then 

slice.should.have.property 'ok' # from should
    

