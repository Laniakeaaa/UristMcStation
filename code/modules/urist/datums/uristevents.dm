// Urist Events:

// Holonaut Jaunt

/datum/event/holonaut_jaunt
	announceWhen = 25
	endWhen = 26
	var/area/location
	var/groupsize = rand(2,6)

/datum/event/holonaut_jaunt/start()
	var/list/jaunt_targets
	var/attempts = 3
	do


// Holonaut Procs



/datum/event/holonaut_jaunt/announce()

	command_announcement.Announce("Sudden high-energy bluespace anomaly detected onboard.")

// Hivebot Infiltration

/datum/event/hivebot_infiltration
	announceWhen = 120
	endWhen = 121
	var/area/location
	var/groupsize = rand(3,7)



/datum/event/hivebot_infiltration/start()
	command_announcement.Announce("Bioscans indicate infiltration of silicon based origin. Caution is advised when entering lesser trafficked areas, or maintenance.")
