/datum/job/assistant
	title = "Assistant"
	supervisors = "everyone"
	access = list(access_prim_tool)
	outfit_type = /singleton/hierarchy/outfit/job/nerva/assistant
	alt_titles = list(
	"Technical Assistant","Medical Intern","Cargo Assistant",
	"Botanist" = /singleton/hierarchy/outfit/job/service/gardener,
	"Librarian" = /singleton/hierarchy/outfit/job/librarian,
	"Journalist" = /singleton/hierarchy/outfit/job/librarian,
	minimal_player_age = 0
	)

/datum/job/assistant/get_description_blurb()
	return	"You are an Assistant onboard the ICS Nerva. Try to assist your assigned department to the best of your abilities and avoid getting into trouble. Remember that you can ask the Second Officer if you would like to be assigned a new role."

/datum/job/merchant
	total_positions = 0
	spawn_positions = 0

/datum/job/stowaway
	title = "Stowaway"
	department = "Civilian"
	department_flag = CIV
	hud_icon = "hudunknown"
	total_positions = 1
	spawn_positions = 1
	availablity_chance = 20
	supervisors = "yourself"
	selection_color = "#515151"
	ideal_character_age = 30
	minimal_player_age = 0
	create_record = 0
	account_allowed = 0
	outfit_type = /singleton/hierarchy/outfit/job/nerva/stowaway
	latejoin_at_spawnpoints = 1
	announced = FALSE
	required_language = null

/datum/job/stowaway/get_description_blurb()
	return	"Survive."

//passenger. this has to be its own role for its own spawns.

/datum/job/passenger
	title = "Passenger"
	department = "Civilian"
	supervisors = "the Captain's tolerance"
	department_flag = CIV
	total_positions = -1
	spawn_positions = -1
	economic_power = 2
	outfit_type = /singleton/hierarchy/outfit/job/nerva/passenger

/datum/job/submap
	required_language = null

//vox
/datum/map/nerva
	species_to_job_whitelist = list(
		/singleton/species/vox = list(/datum/job/ai, /datum/job/cyborg, /datum/job/merchant, /datum/job/stowaway)
	)
