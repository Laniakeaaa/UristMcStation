/datum/job/scientist
	minimal_player_age = 0
	title = "NanoTrasen Scientist"
	alt_titles = list("NanoTrasen Xenobiologist", "NanoTrasen Anomalist", "NanoTrasen Xenobotanist")
	supervisors = "the senior scientist and NanoTrasen Central Command"
	total_positions = 3
	spawn_positions = 3
	hud_icon = "hudscientist"
	outfit_type = /singleton/hierarchy/outfit/job/nerva/scientist
	access = list(access_tox, access_tox_storage, access_research, access_xenobiology, access_xenoarch, access_expedition, access_network, access_maint_tunnels, access_prim_tool)
	email_domain = "externalresearch.nt"
	allow_custom_email = FALSE

/datum/job/scientist/get_description_blurb()
	return	"You are a NanoTrasen scientist, working aboard the ICS Nerva under contract. The captain has provided space on the ship for you to do research, in exchange for a nice payout from NanoTrasen, and access to NanoTrasen research contracts. This unique arrangement is owing to NanoTrasen's weak position in the outer sectors. Thus, you are not fully part of the Nerva's crew, and answer to NanoTrasen Central Command above all else. However, while on the ship, you are expected to answer to the senior scientist, while also respecting the wishes of the captain or the ranking officer, particularly in emergency situations."
