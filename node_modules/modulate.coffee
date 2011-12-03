class Modulate 
  constructor: () ->
    @boo = "foo"  
  load: -> console.log "load"

module.exports = new Modulate()

