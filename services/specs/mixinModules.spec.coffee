#>> Given 

should = require 'should'
mixinModules = require '../mixinModules'

#>> When i get the congiuration for an environment

getConfigForEnvironment '../..', 'production', (config) ->  
      
#>> Then 

  config.should.be.ok

#>> And
    
  config.should.have.property 'modules'

