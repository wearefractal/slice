mixinModule = (modules) ->
  slice = {}

  for mod in modules    
    mod = require mod
    slice[name] = property for name, property of mod

  return slice


module.exports = mixinModule
