#>> Given 

should = require 'should'
getConfigForEnvironment = require '../getConfigForEnvironment'

#>> When i get the congiuration for an environment

getConfigForEnvironment '../..', 'production', (config) ->  
      
#>> Then 

  config.should.be.ok

#>> And
    
  config.should.have.property 'modules'

