/************
* Badassery *
************/
/datum/uplink_item/item/badassery
	category = /datum/uplink_category/badassery

/datum/uplink_item/item/badassery/balloon
	name = "For showing that You Are The BOSS (Useless Balloon)"
	item_cost = DEFAULT_TELECRYSTAL_AMOUNT
	path = /obj/item/toy/balloon

/datum/uplink_item/item/badassery/balloon/corporate
	name = "For showing that you love the company SOO much (Useless Balloon)"
	path = /obj/item/toy/balloon/nanotrasen

/datum/uplink_item/item/badassery/balloon/random
	name = "For showing 'Whatevah~' (Useless Balloon)"
	desc = "Randomly selects a ballon for you!"
	path = /obj/item/toy/balloon

/datum/uplink_item/item/badassery/balloon/random/get_goods(obj/item/device/uplink/U, loc)
	var/balloon_type = pick(typesof(path))
	var/obj/item/I = new balloon_type(loc)
	return I

/datum/uplink_item/item/badassery/crayonmre
	name = "Crayon MRE"
	desc = "An exceptionally robust MRE."
	item_cost = DEFAULT_TELECRYSTAL_AMOUNT
	path = /obj/item/storage/mre/menu11/special

/datum/uplink_item/item/badassery/modded_foam_gun
	name = "Modded foam gun"
	desc = "It's a Jorf revolver blaster and 14 weighted darts. Even after aftermarket modification to increase its range and launch velocity, it's not a very effective weapon."
	item_cost = 32
	path = /obj/item/storage/box/large/foam_gun/revolver/tampered

/datum/uplink_item/item/badassery/fortune
	name = "A Fortune Cookie"
	desc = "Why would you buy this?"
	item_cost = DEFAULT_TELECRYSTAL_AMOUNT
	path = /obj/item/reagent_containers/food/snacks/fortunecookie

/datum/uplink_item/item/badassery/ancienttoolbox
	name = "Ancient Toolbox"
	desc = "An ancient dusty red toolbox. It looks very robust. Only a true greytider could use this."
	item_cost = 32
	path = /obj/item/storage/toolbox/ancienttoolbox

/**************
* Random Item *
**************/
/datum/uplink_item/item/badassery/random_one
	name = "Random Item"
	desc = "Buys you a random item for at least 1 TC. Be careful, this can spend any amount of telecrystals!"
	item_cost = 1

/datum/uplink_item/item/badassery/random_one/buy(obj/item/device/uplink/U, mob/user)
	var/datum/uplink_random_selection/uplink_selection = get_uplink_random_selection_by_type(/datum/uplink_random_selection/default)
	var/datum/uplink_item/item = uplink_selection.get_random_item(U.uses, U)
	return item && item.buy(U, user)

/datum/uplink_item/item/badassery/random_one/can_buy(obj/item/device/uplink/U)
	return U.uses

/datum/uplink_item/item/badassery/random_many
	name = "Random Item Bundle"
	desc = "Buys you as many random items as you can afford. Convenient packaging NOT included!"

/datum/uplink_item/item/badassery/random_many/cost(telecrystals, obj/item/device/uplink/U)
	return max(1, telecrystals)

/datum/uplink_item/item/badassery/random_many/get_goods(obj/item/device/uplink/U, loc)
	var/list/bought_items = list()
	for(var/datum/uplink_item/UI in get_random_uplink_items(U, U.uses, loc))
		UI.purchase_log(U)
		var/obj/item/I = UI.get_goods(U, loc)
		if(istype(I))
			bought_items += I

	return bought_items

/datum/uplink_item/item/badassery/random_many/purchase_log(obj/item/device/uplink/U)
	log_and_message_admins("used \the [U.loc] to buy \a [src]")

/****************
* Surplus Crate *
****************/
/datum/uplink_item/item/badassery/surplus
	name = "\improper Surplus Crate"
	item_cost = DEFAULT_TELECRYSTAL_AMOUNT * 4
	var/item_worth = DEFAULT_TELECRYSTAL_AMOUNT * 6
	var/icon

/datum/uplink_item/item/badassery/surplus/New()
	..()
	antag_roles = list(MODE_MERCENARY)
	desc = "A crate containing [item_worth] telecrystal\s worth of surplus leftovers. If you can find some help to pay for it, you might strike gold."

/datum/uplink_item/item/badassery/surplus/get_goods(obj/item/device/uplink/U, loc)
	var/obj/structure/largecrate/C = new(loc)
	var/random_items = get_random_uplink_items(U, item_worth, C)
	for(var/datum/uplink_item/I in random_items)
		I.purchase_log(U)
		I.get_goods(U, C)

	return C

/datum/uplink_item/item/badassery/surplus/log_icon()
	if(!icon)
		var/obj/structure/largecrate/C = /obj/structure/largecrate
		icon = image(initial(C.icon), initial(C.icon_state))

	return "\icon[icon]"
