path = require 'path'

module.exports = (robot, scripts) ->
  scriptsPath = path.resolve(__dirname, 'src/scripts')
  robot.load(scriptsPath)
