path = require 'path'

getConfigForEnvironment = (moduleRoot, environment, next) ->
 
  configPath = path.resolve "#{moduleRoot}/environments/#{environment}.coffee"
  console.log configPath
  path.exists configPath, (pathExists) ->
    if pathExists then console.log "exists"
    else console.log "doesn't"
# next(require configPath)


module.exports = getConfigForEnvironment
