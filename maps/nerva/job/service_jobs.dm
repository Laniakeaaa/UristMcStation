/datum/job/chef
	economic_power = 3
	access = list(access_hydroponics, access_kitchen, access_prim_tool)
	alt_titles = list("Bartender" = /singleton/hierarchy/outfit/job/service/nervabartender)
	supervisors = "the second officer"
	minimal_player_age = 0

/datum/job/chef/get_description_blurb()
	return	"You are part of the culinary staff aboard the ICS Nerva. It is your job to provide the crew with food, serve alcoholic and non-alcoholic beverages, cook both exotic and non-exotic meals and ensure that no fighting occurs in the bar. You answer directly to the Second Officer. Remember to only use your shotgun if a serious fight occurs and avoid serving spiked food or drinks to your customers, or you may face repercussions."


/datum/job/janitor
	economic_power = 2
	title = "Janitor"
	supervisors = "the second officer"
	total_positions = 1
	spawn_positions = 1
	minimal_player_age = 0
	access = list(access_maint_tunnels, access_janitor, access_medical, access_mailsorting, access_hydroponics, access_library, access_prim_tool)


/datum/job/janitor/get_description_blurb()
	return "You are the Janitor aboard the ICS Nerva. It is your job to clean this vessel from top to bottom. This may include mopping, dealing with pest problems, fixing plumbing and ensuring all trash is disposed of. You answer directly to the Second Officer."

/datum/job/chaplain
	minimal_player_age = 0
	economic_power = 1
	title = "Chaplain"
	department = "Civilian"
	department_flag = CIV
	hud_icon = "hudchaplain"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the second officer"
	access = list(access_morgue, access_chapel_office, access_crematorium, access_prim_tool)
	alt_titles = list("Morale Officer" = /singleton/hierarchy/outfit/job/chaplain)
	outfit_type = /singleton/hierarchy/outfit/job/chaplain

//Clown :^)

/datum/job/clown
	title = "Clown"
	department = "Civilian"
	department_flag = CIV
	total_positions = 1
	spawn_positions = 1
	supervisors = "the second officer"
	selection_color = "#515151"
	access = list(access_theatre, access_prim_tool)
	minimal_player_age = 1
	outfit_type = /singleton/hierarchy/outfit/job/clown

/datum/job/clown/equip(mob/living/carbon/human/H)
	. = ..()
	if(.)
		H.mutations.Add(MUTATION_CLUMSY)


/datum/job/clown/get_description_blurb()
	return	"You are the Clown aboard the ICS Nerva, try your best to entertain the crew. You could answer to the Second Officer, but who would do that?"

//Mime

/datum/job/mime
	title = "Mime"
	department = "Civilian"
	department_flag = CIV
	total_positions = 1
	spawn_positions = 1
	supervisors = "the second officer"
	selection_color = "#515151"
	access = list(access_theatre, access_prim_tool)
	minimal_player_age = 1
	outfit_type = /singleton/hierarchy/outfit/job/mime

/* //This hasn't worked for a while,
/datum/job/mime/equip(mob/living/carbon/human/H)
	. = ..()
	if(.)
		H.miming = 1
		H.verbs += /client/proc/mimespeak
		H.verbs += /client/proc/mimewall
		H.mind.special_verbs += /client/proc/mimespeak
		H.mind.special_verbs += /client/proc/mimewall
*/

/datum/job/mime/get_description_blurb()
	return	"-- .. -- . / -- --- - .... . .-. / ... .... .- .-.. .-.. / ... .- ...- . / ..- ... / .- .-.. .-.. -.-.--"
