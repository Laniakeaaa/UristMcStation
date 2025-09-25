/datum/job/officer
	minimal_player_age = 0
	supervisors = "the chief of security"
	alt_titles = list("Detective")
	outfit_type = /singleton/hierarchy/outfit/job/security/nervasecofficer
	access = list(access_security, access_forensics_lockers, access_eva, access_sec_doors, access_brig, access_maint_tunnels, access_morgue, access_external_airlocks, access_expedition, access_expedition_shuttle_helm, access_medical, access_hydroponics, access_gunnery, access_prim_tool)

/datum/job/officer/get_description_blurb()
	return	"You are part of the Security Department, ensuring the protection of the crew from danger during the voyage of the ICS Nerva. It is your job to oversee and protect your crew, which includes reporting threats, making arrests while following set law guidelines, collecting evidence to aid arrests and cataloging evidence. Ensure that you only use lethal weaponry when there is a credible threat to your life, or you may suffer repercussions and dismissal. You answer directly to the Chief of Security."
