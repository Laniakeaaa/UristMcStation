/datum/job/engineer
	minimal_player_age = 1
	total_positions = 5
	spawn_positions = 3
	access = list(access_eva, access_engine, access_engine_equip, access_tech_storage, access_maint_tunnels, access_external_airlocks, access_construction, access_atmospherics, access_emergency_storage, access_gunnery, access_prim_tool)
	alt_titles = list("Maintenance Technician","Engine Technician","EVA Technician","Damage Control Technician",
		"Electrician" = /singleton/hierarchy/outfit/job/engineering/electrician,
		"Atmospheric Technician" = /singleton/hierarchy/outfit/job/engineering/atmos)

	software_on_spawn = list(/datum/computer_file/program/power_monitor,
							 /datum/computer_file/program/supermatter_monitor,
							 /datum/computer_file/program/alarm_monitor,
							 /datum/computer_file/program/atmos_control,
							 /datum/computer_file/program/rcon_console,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/shields_monitor)

/datum/job/engineer/get_description_blurb()
	return	"You are part of the Engineering Team aboard the ICS Nerva. As an Engineer, it is your job to ensure the ICS Nerva has fully operational power, thrust for flight and air to breathe. Ensure that the Supermatter Crystal is fully operational to generate power and that sufficent gas is used for thrust. You are directly responsible for the Ship's well-being, this includes fixing interior and exterior breaches caused by damage, firefighting from gas leaks and optimizing machines to function to their fullest. You answer directly to the Chief Engineer. Remember to always help your engineers."
