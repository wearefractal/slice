#factor out to build system
ENVIRONMENT  = require('./config/config').ENVIRONEMENT
environments = require './config/environments'

#mixinModules = (modules) -> return {made: true}
mixinModules = require './services/mixinModules'

Slice = ->

  config = environments[ENVIRONMENT] ? environments['production']
  modules = config.modules  

  mixinModules modules, (slice) -> return slice


module.exports = Slice()
