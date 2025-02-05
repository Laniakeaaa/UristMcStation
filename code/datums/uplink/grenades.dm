/***********
* Grenades *
************/
/datum/uplink_item/item/grenades
	category = /datum/uplink_category/grenades

/datum/uplink_item/item/grenades/anti_photon
	name = "1x Photon Disruption Grenade"
	item_cost = 4
	path = /obj/item/weapon/grenade/anti_photon

/datum/uplink_item/item/grenades/anti_photons
	name = "5x Photon Disruption Grenades"
	item_cost = 16
	path = /obj/item/weapon/storage/box/anti_photons

/datum/uplink_item/item/grenades/smoke
	name = "1x Smoke Grenade"
	item_cost = 4
	path = /obj/item/weapon/grenade/smokebomb

/datum/uplink_item/item/grenades/smokes
	name = "5x Smoke Grenades"
	item_cost = 16
	path = /obj/item/weapon/storage/box/smokes

/datum/uplink_item/item/grenades/emp
	name = "1x EMP Grenade"
	item_cost = 8
	path = /obj/item/weapon/grenade/empgrenade

/datum/uplink_item/item/grenades/emps
	name = "5x EMP Grenades"
	item_cost = 24
	path = /obj/item/weapon/storage/box/emps
	antag_costs = list(MODE_PARANOIA = 15)

/datum/uplink_item/item/grenades/frag_high_yield
	name = "Fragmentation Bomb"
	item_cost = 24
	antag_roles = list(MODE_MERCENARY) // yeah maybe regular traitors shouldn't be able to get these
	path = /obj/item/weapon/grenade/frag/high_yield

/datum/uplink_item/item/grenades/fragshell
	name = "1x Fragmentation Shell"
	desc = "Weaker than standard fragmentation grenades, these devices can be fired from a grenade launcher."
	item_cost = 10
	path = /obj/item/weapon/grenade/frag/shell

/datum/uplink_item/item/grenades/fragshells
	name = "5x Fragmentation Shells"
	desc = "Weaker than standard fragmentation grenades, these devices can be fired from a grenade launcher."
	item_cost = 40
	path = /obj/item/weapon/storage/box/fragshells

/datum/uplink_item/item/grenades/frag
	name = "1x Fragmentation Grenade"
	item_cost = 10
	antag_roles = list(MODE_MERCENARY)
	path = /obj/item/weapon/grenade/frag

/datum/uplink_item/item/grenades/frags
	name = "5x Fragmentation Grenades"
	item_cost = 40
	antag_roles = list(MODE_MERCENARY)
	path = /obj/item/weapon/storage/box/frags

/datum/uplink_item/item/grenades/supermatter
	name = "1x Supermatter Grenade"
	desc = "This grenade contains a small supermatter shard which will delaminate upon activation and pull in nearby objects, irradiate lifeforms, and eventually explode."
	item_cost = 15
	antag_roles = list(MODE_MERCENARY)
	path = /obj/item/weapon/grenade/supermatter

/datum/uplink_item/item/grenades/supermatters
	name = "5x Supermatter Grenades"
	desc = "These grenades contains a small supermatter shard which will delaminate upon activation and pull in nearby objects, irradiate lifeforms, and eventually explode."
	item_cost = 60
	antag_roles = list(MODE_MERCENARY)
	path = /obj/item/weapon/storage/box/supermatters

/datum/uplink_item/item/grenades/metalfoam
	name = "1x Metal Foam Grenade"
	item_cost = 4
	path = /obj/item/weapon/grenade/chem_grenade/metalfoam

/datum/uplink_item/item/grenades/metalfoams
	name = "5x Metal Foam Grenades"
	item_cost = 16
	path = /obj/item/weapon/storage/box/metalfoams