environmentIsSet = require './environmentIsSet'
getConfigForEnvironment = require './getConfigForEnvironment'
ENVIRONMENT = require('../config').ENVIRONMENT

getConfig = (moduleRoot, next) ->

  get = (env) -> 
    console.log 'getConfig.get'
    getConfigForEnvironment moduleRoot, env, (config) -> 
      console.log "got config for env"
      next? config

  environmentIsSet (set) ->
    if set then get ENVIRONMENT
    else get 'production' #defualt


module.exports = getConfig
