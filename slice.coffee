#factor ENV checks out to build system
ENVIRONMENT  = require('../config/config').ENVIRONEMENT
environments = require '../config/environments'
#mixinModules = (modules) -> return {made: true}
mixinModules = require './services/mixinModules'

Slice = ->

  env     = environments[ENVIRONMENT] ? environments['production']
  modules = env.sliceModules

  mixinModules modules, (slice) -> return slice


module.exports = Slice()
