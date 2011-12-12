path = require 'path'
appRoot = path.join __dirname, "../.."
environments = require( path.join appRoot, 'config/environments' )
mixinModules = require './services/mixinModules'

Slice = ->

  env = rzr?.ENV ? 'production'
  modules = environments[env].sliceModules
  return slice = mixinModules modules


module.exports = Slice()
