/datum/job/doctor
	minimal_player_age = 0
	access = list(access_medical, access_medical_equip, access_morgue, access_surgery, access_chemistry, access_virology, access_maint_tunnels, access_prim_tool)
	alt_titles = list("Chemist" = /singleton/hierarchy/outfit/job/medical/doctor/chemist,
		"Surgeon" = /singleton/hierarchy/outfit/job/medical/doctor/surgeon,
		"Emergency Physician" = /singleton/hierarchy/outfit/job/medical/doctor/emergency_physician
		)
/datum/job/doctor/get_description_blurb()
	return	"You are a doctor on board the ICS Nerva, as a Doctor, it is your job to ensure all crew remain healthy, this may involve scanning patients in the bodyscanners to find internal injuries, perform medical surgery to fix ailments, produce beneficial medicine to assist the crew and provide for and seek out critically injured crew. As a Medical Doctor, ensure that you follow surgical procedures correctly to avoid malpractice, and to remind crew to set their suit sensors to maximum. You may be requested to accompany Away Missions, or other expeditions to ensure away-team safety. You answer directly to the Chief Medical Officer. If any patient dies, remember to always remove the neural lace of the deceased crewmember and replace their body using the cloner and attach the new lace to revive them."

/datum/job/psychiatrist
	title = "Counselor"
	department = "Medical"
	department_flag = MED
	hud_icon = "hudpsychiatrist"
	total_positions = 1
	spawn_positions = 1
	economic_power = 5
	minimal_player_age = 3
	supervisors = "the chief medical officer"
	selection_color = "#013d3b"
	access = list(access_medical, access_medical_equip, access_morgue, access_surgery, access_chemistry, access_virology, access_psychiatrist, access_prim_tool)
	outfit_type = /singleton/hierarchy/outfit/job/medical/psychiatrist/nerva
	alt_titles = list(
	"Psychiatrist" = /singleton/hierarchy/outfit/job/medical/psychiatrist/nerva,
	"Psychologist" = /singleton/hierarchy/outfit/job/medical/psychiatrist/nerva_psychologist)
