/datum/job/cargo_tech
	minimal_player_age = 0
	economic_power = 4
	title = "Supply Technician"
	supervisors = "the quartermaster"
	alt_titles = list("Cargo Technician", "Resource Technician", "Fabrication Technician", "Salvage Technician")
	total_positions = 5 //because we're replacing science
	spawn_positions = 4
	hud_icon = "hudcargotechnician"
	outfit_type = /singleton/hierarchy/outfit/job/nerva/supplytech
	access = list(access_maint_tunnels, access_mailsorting, access_cargo, access_cargo_bot, access_mining, access_mining_station,
	access_expedition_shuttle_helm, access_expedition, access_research, access_prim_tool)

/datum/job/cargo_tech/get_description_blurb()
	return	"You are part of the Supply Department on the ICS Nerva. As part of the Supply Team, it is your job to obtain any shipped crates ordered from nearby stations by your Quartermaster, participate in and conduct away-missions with approval, salvage derelict stations and vessels for materials/artifacts to sell, conduct R&D work, and mine for minerals at nearby Asteroid Belts. You answer directly to the Quartermaster, ensure that you do not use the R&D and Autolathes as a way to manufacture firearms for personal use, as this may lead to dismissal. Remember to pack radio equipment, suitable internals and EVA equipment when conducting salvage, mining and away-missions."

/datum/job/roboticist
	minimal_player_age = 0
	economic_power = 5
	title = "Roboticist"
	supervisors = "the quartermaster"
	total_positions = 2
	spawn_positions = 2
	hud_icon = "hudcargotechnician"
	outfit_type = /singleton/hierarchy/outfit/job/science/nervaroboticist
	access = list(access_maint_tunnels, access_mailsorting, access_cargo, access_cargo_bot,
	access_robotics, access_research, access_prim_tool)

/datum/job/roboticist/get_description_blurb()
	return	"You are a robotics specialist, part of the Supply Department on the ICS Nerva. Unlike the rest of the Supply department, you are not expected to participate in away-missions, although you are free to do so if authorized. Instead, it is your job to handle all things Robotics, be that production of exosuits for departmental needs, replacement of articifial limbs, production of cyborgs and FPBs, and the transferral of MMIs to robotic bodies. As such, although you report directly to the Quartermaster, you will likely also work closely with the medical department to ensure the robotic preservation of deceased crew."
