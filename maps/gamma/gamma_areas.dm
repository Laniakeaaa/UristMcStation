/datum/map/nerva
//	base_floor_area = /area/maintenance/exterior
//	post_round_safe_areas = list(/area/shuttle/escape_pod1,/area/shuttle/escape_pod2,/area/shuttle/escape_pod3)

//Order is as follows Command, Civilian, Security, Science, Engineering, Medical, Cargo, Maintenance, Hallways

//////////////////////////////////////
//			COMMAND					//
//////////////////////////////////////

/area/command
	icon_state = "head_quarters"
	req_access = list(access_bridge)

//////////////////////////////////////
//			CIVILLIAN			//
//////////////////////////////////////


/area/civilian
	icon_state = "green"

//////////////////////////////////////
//			SECURITY				//
//////////////////////////////////////


/area/security
	icon_state = "security"
	req_access = list(access_security)

//////////////////////////////////////
//			SCIENCE 				//
//////////////////////////////////////


/area/rnd
	icon_state = "research"
	req_access = list(access_tox)

//////////////////////////////////////
//			ENGINEERING				//
//////////////////////////////////////


/area/engineering
	icon_state = "yellow"
	req_access = list(access_engine)

/area/engineering/substation
	name = "/improper Substation"
	icon_state = "engine_smes"
	sound_env = SMALL_ENCLOSED
	area_flags = AREA_FLAG_RAD_SHIELDED
	req_access = list(access_engine)

/area/solar
	req_access = list(access_maint_tunnels)

//////////////////////////////////////
//			MEDICAL     			//
//////////////////////////////////////


/area/medical
	icon_state = "medbay"
	req_access = list(access_medical)

//////////////////////////////////////
//			CARGO       			//
//////////////////////////////////////


/area/logistics
	icon_state = "yellow"
	req_access = list(access_cargo)

//////////////////////////////////////
//			MAINTENANCE				//
//////////////////////////////////////


/area/maintenance/gamma
	area_flags = AREA_FLAG_RAD_SHIELDED
	sound_env = TUNNEL_ENCLOSED
	turf_initializer = /singleton/turf_initializer/maintenance
	forced_ambience = list('sound/ambience/maintambience.ogg')
	req_access = list(access_maint_tunnels)

//////////////////////////////////////
//			HALLWAYS     			//
//////////////////////////////////////

/area/hallway
	sound_env = LARGE_ENCLOSED


/area/centcom
	name = "Admin Area"

//////////////////////////////////////
//			ADMIN + ANTAG			//
//////////////////////////////////////

/area/holodeck
	name = "\improper Holodeck"
	icon_state = "Holodeck"
	dynamic_lighting = 0
	requires_power = 0
	sound_env = LARGE_ENCLOSED
