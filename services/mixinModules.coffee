extend = require('extenze').extend

mixinModules = (modules) ->

  return slice = extend {}, require( mod ) for mod in modules


module.exports = mixinModules
