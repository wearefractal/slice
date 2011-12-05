ENVIRONMENT = require('../config').ENVIRONMENT

environmentIsSet = (next) -> next? ENVIRONMENT?


module.exports = environmentIsSet
