/*******************
* RIG Modules * because hardsuits and rigs are different, Bay!
*******************/
/datum/uplink_item/item/rig_modules
	category = /datum/uplink_category/rig_modules

/datum/uplink_item/item/rig_modules/energy_net
	name = "\improper RIG Net Projector Module"
	desc = "A RIG module capable of creating an energy net device that can be thrown in order to capture targets like the prey they are."
	item_cost = 20
	path = /obj/item/rig_module/fabricator/energy_net

/datum/uplink_item/item/rig_modules/ewar_voice
	name = "\improper RIG Electrowarfare Suite and Voice Synthesiser Modules"
	desc = "Includes two modules that, once installed and activated, are capable of masking your voice and disrupting the AI from tracking you."
	item_cost = 24
	path = /obj/item/storage/backpack/satchel/syndie_kit/ewar_voice

/datum/uplink_item/item/rig_modules/maneuvering_jets
	name = "\improper RIG Maneuvering Jets Module"
	desc = "A module capable of giving your suit an active thrust system, so that you can maneuver in zero gravity."
	item_cost = 32
	path = /obj/item/rig_module/maneuvering_jets

/datum/uplink_item/item/rig_modules/egun
	name = "\improper RIG Mounted Energy Gun Module"
	desc = "A module that drains your power reserves in order to fire an arm mounted energy gun."
	item_cost = 48
	path = /obj/item/rig_module/mounted/energy/egun

/datum/uplink_item/item/rig_modules/power_sink
	name = "\improper RIG Power Sink Module"
	desc = "A module capable of recharging your suit's power reserves, by tapping into an exposed, live wire."
	item_cost = 48
	path = /obj/item/rig_module/power_sink

/datum/uplink_item/item/rig_modules/laser_canon
	name = "\improper RIG Mounted Laser Cannon Module"
	desc = "A module capable of draining your suit's power reserves in order to fire a shoulder mounted laser cannon."
	item_cost = 64
	path = /obj/item/rig_module/mounted/energy/lcannon
	antag_roles = list(MODE_MERCENARY)
