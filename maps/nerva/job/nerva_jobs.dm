/datum/map/nerva
	allowed_jobs = list(/datum/job/captain, /datum/job/firstofficer, /datum/job/hop, /datum/job/seniorscientist, /datum/job/blueshield,
						/datum/job/chef, /datum/job/janitor, /datum/job/assistant,
						/datum/job/qm, /datum/job/cargo_tech, /datum/job/roboticist,
						/datum/job/chief_engineer, /datum/job/engineer,
						/datum/job/hos, /datum/job/officer,
						/datum/job/cmo, /datum/job/doctor, /datum/job/psychiatrist,
						/datum/job/scientist, /datum/job/chaplain,
						/datum/job/mime, /datum/job/clown, /datum/job/passenger,
						/datum/job/merchant, /datum/job/stowaway,
						/datum/job/ai, /datum/job/cyborg
						)

	access_modify_region = list(
		ACCESS_REGION_SECURITY = list(access_change_ids),
		ACCESS_REGION_MEDBAY = list(access_change_ids),
		ACCESS_REGION_RESEARCH = list(access_rd),
		ACCESS_REGION_ENGINEERING = list(access_change_ids),
		ACCESS_REGION_COMMAND = list(access_change_ids),
		ACCESS_REGION_GENERAL = list(access_change_ids),
		ACCESS_REGION_SUPPLY = list(access_change_ids),
		ACCESS_REGION_SERVICE = list(access_change_ids)
	)

//general command

/datum/job
	required_language = LANGUAGE_GALCOM
	allow_custom_email = TRUE
