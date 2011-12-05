mixinModules = require './services/mixinModules'
getConfig = require './services/getConfig'

Slice = ->

#  slice = {}
  console.log 'constructing'

  getConfig '..', (config) ->
    console.log 'got config'
    mixinModules config.modules, (newSlice) ->
      console.log "new slice"
      return newSlice


module.exports = new Slice()
