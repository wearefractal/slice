mixinModules = require './services/mixinModules'

Slice = ->

  mixinModules rzr.ENV.sliceModules, (slice) -> return slice


module.exports = Slice()
