/datum/map/gamma
	allowed_jobs = list(/datum/job/captain)


/datum/job
	required_language = LANGUAGE_GALCOM

//////////////////////////////////////
//			SILICONS	   			//
//////////////////////////////////////
/datum/job/cyborg
	minimal_player_age = 0

/datum/job/cyborg/get_description_blurb()
	return "You are a Cyborg, purposed for use on Gamma One. Ensure that you follow all directives specified to you by your lawset. You answer directly to all crew, Failure to follow your lawset may result in your removal."

//////////////////////////////////////
//			COMMAND	    			//
//////////////////////////////////////

/datum/job/captain
	minimal_player_age = 7
//	outfit_type = /singleton/hierarchy/outfit/job/nerva/captain
	economic_power = 24

/datum/job/crewchief
	minimal_player_age = 7
//	outfit_type = /singleton/hierarchy/outfit/job/nerva/captain

/datum/job/cos
	minimal_player_age = 7
//	outfit_type = /singleton/hierarchy/outfit/job/nerva/captain

/datum/job/ct
	minimal_player_age = 7
//	outfit_type = /singleton/hierarchy/outfit/job/nerva/captain

/datum/job/cmo
	minimal_player_age = 7
//	outfit_type = /singleton/hierarchy/outfit/job/nerva/captain

/datum/job/seo
	minimal_player_age = 7
//	outfit_type = /singleton/hierarchy/outfit/job/nerva/captain

//////////////////////////////////////
//			CIVILLIAN	    		//
//////////////////////////////////////

/datum/job/crewman
	minimal_player_age = 0

/datum/job/chef
	minimal_player_age = 0

/datum/job/botanist
	minimal_player_age = 0

/datum/job/sanitationofficer
	minimal_player_age = 0

/datum/job/clown
	minimal_player_age = 0

/datum/job/crewman
	minimal_player_age = 0



/datum/job/submap
	required_language = null
