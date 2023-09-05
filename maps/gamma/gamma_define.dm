/datum/map/gamma
	name = "Gamma"
	full_name = "Gamma-One"
	path = "gamma"

	lobby_screens = list('maps/gamma/gamma_lobby.dmi')
	station_levels = list(1,2,3,4,5,6)
	contact_levels = list (1,2,3,4,5,6)
	player_levels = list(1,2,3,4,5,6)
	admin_levels = list(7)
	empty_levels = list(8)
	//accessible_z_levels = 'fillthisin'
	overmap_size = 16
	overmap_event_areas = 12

	// id_hud_icons = ''
	// logo = 'gammalogo.png'

	allowed_spawns = list("Cryogenic ", "Somewhere in Maintenance", "Cyborg Storage")
	default_spawn = "Cryogenic Storage"

	station_name  = "Gamma-One"
	station_short = "Gamma"
//	dock_name     = "TBD"
	boss_name     = "GAMMA WRDN System"
	boss_short    = "WRDN"
	company_name  = "GAMMA WRDN System"
	company_short = "WRDN"

	map_admin_faxes = list("WRDN Unit Central Control", "Listening Outpost Zulu-3")


	shuttle_called_message = "ATTENTION: Emergency Distress Signal noted. Emergency Escape Shuttle is inbound in %ETA%."
	shuttle_recall_message = "ATTENTION: Emergency Distress Signal ceased. Emergency Escape Shuttle is returning to orbit."

//	starting_money = 22000		//Money in station account //tweak this value
	department_money = 1000		//Money in department accounts
	salary_modifier	= 0.5			//Multiplier to starting character money

	supply_currency_name = "Scrip" // Come up with a better scrip name, what do you think you'd get paid real money in the ass-end of nowhere?
	supply_currency_name_short = "sc."

	using_new_cargo = TRUE //this var inits the stuff related to the contract system, the new trading system, and other misc things including the endround station profit report.
	new_cargo_inflation = 45 //used to calculate how much points are now. this needs balancing //i didn't make this clear, it's the original point value times this number
// 	trading_faction = /datum/factions/nanotrasen //this is used to determine rep points/bonuses from trading and certain contracts

//	evac_controller_type = /datum/evacuation_controller/starship

//	default_law_type = /datum/ai_laws/manifest   -  change this to something worst - s
	use_overmap = 1

	num_exoplanets = 1

//	away_site_budget = 4
//	min_offmap_players = 0

	date_offset = 930

	base_floor_type = /turf/simulated/floor/reinforced/airless
	// for base_floor_area, look in nerva_define.dm

	species_to_job_blacklist = list( // Keep all aliens restricted the same, bar machines which are trusted even less, as I want to have emagging and such - S
		/datum/species/unathi  = list(/datum/job/captain),
		/datum/species/skrell  = list(/datum/job/captain),
		/datum/species/machine = list(/datum/job/captain),
		/datum/species/diona   = list(/datum/job/captain),
		/datum/species/teshari = list(/datum/job/captain)
	)

/datum/map/gamma/setup_map()
	system_name = "Bootes Void"
	minor_announcement = new(new_sound = sound('sound/AI/torch/commandreport.ogg', volume = 45))
	SSsupply.movetime = 600 //cutting it in half to reduce waiting at the trading station

/datum/map/gamma/get_map_info()
	. = list()
	. +=  "You're aboard <b>GAMMA ONE</b>, an independent asteroid-bound station owned by the Captain. Its primary mission is whatever the Captain dictates, which can include trading, scavenging or exploration."
	. +=  "The station is staffed with a multitude of cultures and species, hailing from multiple different backgrounds and factions."
	. +=  "This is the bleeding edge of frontier, distant and lonely in the Bootes Void. You will only find the occasional trading caravan, and outposts of pirates and smugglers looking for untold riches."
	. +=  "No-one owns this sector, expect encounters from pirate to untold horrors alike."
	return jointext(., "<br>")
