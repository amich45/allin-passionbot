﻿# Description:
#   Pulls up SC2Ranks data
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   Hearsay sc2ranks league - Pulls up League Data
#	Hearsay sc2ranks race - Pulls up Race Data
#	Hearsay sc2ranks <player> - Pulls up Player Data
#
# Author:
#   Table


module.exports = (robot) ->
	robot.respond /(sc2ranks )(.*)/i, (msg) ->
	if msg.match[2] == 'league'
			msg.send "http://www.sc2ranks.com/stats/league"
		else if msg.match[2] == 'race'
			msg.send "http://www.sc2ranks.com/stats/race"
		else 
			msg.send "http://www.sc2ranks.com/search/hots/global/1v1/all/all/exact/%".replace "%", msg.match[2]

