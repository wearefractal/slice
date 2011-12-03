Slice = ->

  slice = {}
  
  modules = require './config'
  for mod in modules    
    mod = require mod
    slice[name] = property for name, property of mod

  # shout-out: http://arcturo.github.com/library/coffeescript/03_classes.html
  slice.extend = (obj, mixin) ->
    obj[name] = method for name, method of mixin        
    return obj
  
  slice.include = (klass, mixin) ->
    slice.extend klass.prototype, mixin

  return slice


module.exports = Slice()

