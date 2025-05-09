/*******************
* Hardsuit Modules *
*******************/
/datum/uplink_item/item/hardsuit_modules
	category = /datum/uplink_category/hardsuit_modules

/datum/uplink_item/item/hardsuit_modules/energy_net
	name = "\improper Net Projector"
	desc = "A module capable of creating an energy net device that can be thrown in order to capture targets like the prey they are. \
	Requires manual installation by crowbarring a hardsuit's access panel open and installing."
	item_cost = 20
	path = /obj/item/rig_module/fabricator/energy_net

/datum/uplink_item/item/hardsuit_modules/ewar_voice
	name = "\improper Electrowarfare Suite and Voice Synthesiser"
	desc = "Includes two modules that, once installed and activated, are capable of masking your voice and disrupting the AI from tracking you. \
	Requires manual installation by crowbarring a hardsuit's access panel open and installing."
	item_cost = 24
	path = /obj/item/storage/backpack/satchel/syndie_kit/ewar_voice

/datum/uplink_item/item/hardsuit_modules/maneuvering_jets
	name = "\improper Maneuvering Jets"
	desc = "A module capable of giving your suit an active thrust system, so that you can maneuver in zero gravity. \
	Requires manual installation by crowbarring a hardsuit's access panel open and installing."
	item_cost = 32
	path = /obj/item/rig_module/maneuvering_jets

/datum/uplink_item/item/hardsuit_modules/egun
	name = "\improper Mounted Energy Gun"
	desc = "A module that drains your power reserves in order to fire an arm mounted energy gun. \
	Requires manual installation by crowbarring a hardsuit's access panel open and installing."
	item_cost = 48
	path = /obj/item/rig_module/mounted/energy/egun

/datum/uplink_item/item/hardsuit_modules/power_sink
	name = "\improper Power Sink"
	desc = "A module capable of recharging your suit's power reserves, by tapping into an exposed, live wire. \
	Requires manual installation by crowbarring a hardsuit's access panel open and installing."
	item_cost = 48
	path = /obj/item/rig_module/power_sink

/datum/uplink_item/item/hardsuit_modules/laser_canon
	name = "\improper Mounted Laser Cannon"
	desc = "A module capable of draining your suit's power reserves in order to fire a shoulder mounted laser cannon. \
	Requires manual installation by crowbarring a hardsuit's access panel open and installing."
	item_cost = 64
	path = /obj/item/rig_module/mounted/energy/lcannon
	antag_roles = list(MODE_MERCENARY)
