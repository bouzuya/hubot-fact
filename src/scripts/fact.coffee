# Description
#   A Hubot script that calculate factorials
#
# Configuration:
#   None
#
# Commands:
#   hubot fact <N> - calculate factorials
#
# Author:
#   bouzuya

module.exports = (robot) ->
  fact = (n) ->
    if n is 0 then 1 else n * fact(n - 1)

  robot.respond /fact\s+(\d+)$/, (res) ->
    n = parseInt(res.match[1], 10)
    if n >= 0
      res.send "#{n}! = #{fact(n)}"
    else
      res.send 'N >= 0'
