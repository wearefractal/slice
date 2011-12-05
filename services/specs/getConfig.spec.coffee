
#>> Given 

should = require 'should'
getConfig = require '../getConfig'

#>> When I call getConfig with a valid module root

getConfig '../..', (config) ->

#>> Then

  config.should.be.ok

#>> And

  config.should.have.property 'modules'


