/*										*****New space to put all UristMcStation Weapons*****

Please keep it tidy, by which I mean put comments describing the item before the entry. Icons go to 'icons/urist/items/uristweapons.dmi' -Glloyd */


//Welder machete, icons by ShoesandHats, object by Cozarctan

/obj/item/material/sword/machete
	item_icons = DEF_URIST_INHANDS
	name = "machete"
	desc = "a large blade beloved by sugar farmers and mass murderers"
	icon = 'icons/urist/items/uristweapons.dmi'
	icon_state = "machete"
	item_state = "machete"
	sharp = 1
	obj_flags = OBJ_FLAG_CONDUCTIBLE
	slot_flags = SLOT_BELT | SLOT_BACK
	force_multiplier = 0.34 // 20-ish when wielded with hardness 60 (steel), same as before
	thrown_force_multiplier = 0.5 // 10 when thrown with weight 20 (steel)
	w_class = 3
	hitsound = 'sound/weapons/bladeslice.ogg'
	attack_verb = list("cleaved", "slashed", "sliced", "torn", "ripped", "diced", "cut")

	/*suicide_act(mob/user)
		viewers(user)to_target(, "<span class='danger'>[user] is slitting \his stomach open with the [src.name]! It looks like \he's trying to commit suicide.</span>")
		return (BRUTELOSS)*/

//dual saber proc

/obj/item/melee/energy/sword/attackby(obj/item/W, mob/living/user)
	..()
	if(istype(W, /obj/item/melee/energy/sword))
		if(W == src)
			to_chat(user, "<span class='notice'>You try to attach the end of the energy sword to... itself. You're not very smart, are you?</span>")
			if(ishuman(user))
				user.adjustBrainLoss(10)
		else
			to_chat(user, "<span class='notice'>You attach the ends of the two energy swords, making a single double-bladed weapon! You're cool.</span>")
			if(src.blade_color == "red")
				if(istype(W, /obj/item/melee/energy/sword/blue))
					new /obj/item/melee/energy/sword/dualsaber/purple(user.loc)
				else if(istype(W, /obj/item/melee/energy/sword/yellow))
					new /obj/item/melee/energy/sword/dualsaber/orange(user.loc)
				else
					new /obj/item/melee/energy/sword/dualsaber/red(user.loc)
			if(src.blade_color == "blue")
				if(istype(W, /obj/item/melee/energy/sword/red))
					new /obj/item/melee/energy/sword/dualsaber/purple(user.loc)
				else if(istype(W, /obj/item/melee/energy/sword/yellow))
					new /obj/item/melee/energy/sword/dualsaber/green(user.loc)
				else
					new /obj/item/melee/energy/sword/dualsaber/blue(user.loc)
			if(src.blade_color == "yellow")
				if(istype(W, /obj/item/melee/energy/sword/red))
					new /obj/item/melee/energy/sword/dualsaber/orange(user.loc)
				else if(istype(W, /obj/item/melee/energy/sword/blue))
					new /obj/item/melee/energy/sword/dualsaber/green(user.loc)
				else
					new /obj/item/melee/energy/sword/dualsaber/yellow(user.loc)
			if(src.blade_color == "green")
				new /obj/item/melee/energy/sword/dualsaber/green(user.loc)
			if(src.blade_color == "purple")
				new /obj/item/melee/energy/sword/dualsaber/purple(user.loc)
			if(src.blade_color == "orange")
				new /obj/item/melee/energy/sword/dualsaber/orange(user.loc)
			if(src.blade_color == "black")
				new /obj/item/melee/energy/sword/dualsaber(user.loc)
			user.remove_from_mob(W)
			user.remove_from_mob(src)
			qdel(W)
			qdel(src)

//misc melee weapons

/obj/item/material/knife/hook
	name = "meat hook"
	desc = "A sharp, metal hook what sticks into things."
	icon = 'icons/urist/items/uristweapons.dmi'
	icon_state = "hook_knife"
	item_state = "hook_knife"

/obj/item/material/sword/urist
	icon = 'icons/urist/items/uristweapons.dmi'

/obj/item/material/sword/urist/basic
	name = "sword"
	icon_state = "longsword"

/obj/item/material/sword/urist/gladius
	name = "gladius"
	desc = "Are you not entertained!?"
	icon_state = "gladius"

/obj/item/material/sword/urist/khopesh
	name = "khopesh"
	icon_state = "khopesh"
	item_state = "katana"

/obj/item/material/sword/urist/sabre
	name = "sabre"
	icon_state = "sabre"
	item_state = "katana"

/obj/item/material/sword/urist/dao
	name = "dao"
	icon_state = "dao"
	item_state = "katana"

/obj/item/material/sword/urist/rapier
	name = "rapier"
	desc = "En guarde!"
	icon_state = "rapier"
	item_state = "katana"

/obj/item/material/sword/urist/trench
	name = "trench knife"
	icon_state = "trench"
	item_state = "katana"

//bow and arrow shit

/obj/item/arrow/improv
	name = "improvised arrow"
	desc = "It's a shitty improvised arrow. It has a wooden shaft and a makeshift glass arrowhead."
	icon = 'icons/urist/items/guns.dmi'
	icon_state = "improvarrow"
	item_state = "bolt"
	throwforce = 7
	w_class = 3.0
	sharp = 1
	edge = 0
	lock_picking_level = 1

/obj/item/arrow/woodarrow
	name = "arrow"
	desc = "It's a regular arrow, wooden shaft, metal arrowhead. You get the deal."
	icon = 'icons/urist/items/guns.dmi'
	icon_state = "arrow"
	item_state = "bolt"
	throwforce = 8
	w_class = 3.0
	sharp = 1
	edge = 0
	lock_picking_level = 2

/obj/item/gun/launcher/crossbow/bow
	name = "wooden bow"
	desc = "The age old design for when you don't want to get hit."
	icon = 'icons/urist/items/improvised.dmi'
	icon_state = "bow"
	item_icons = DEF_URIST_INHANDS
	powered = FALSE
	draw_time = 1 SECOND

//RS Weapons

/obj/item/urist/blade
	sharp = 1
	edge = 1
	hitsound = 'sound/weapons/bladeslice.ogg'
	attack_verb = list("attacked", "slashed", "stabbed", "sliced", "torn", "ripped", "diced", "cut")

/obj/item/urist/blade/bronzedagger
	name = "Bronze Dagger"
	desc = "Short but pointy."
	icon = 'icons/urist/items/uristweapons.dmi'
	icon_state = "bronze_dagger"
	item_state = "knife"
	force = 12
	throwforce = 5
	w_class = 2.0


/obj/item/urist/blade/addydagger
	name = "Adamantite Dagger"
	desc = "Short but pointy."
	icon = 'icons/urist/items/uristweapons.dmi'
	icon_state = "green_dagger"
	item_state = "knife"
	force = 20
	throwforce = 9
	w_class = 2.0


/obj/item/urist/blade/runedagger
	name = "Runite Dagger"
	desc = "Short but pointy."
	icon = 'icons/urist/items/uristweapons.dmi'
	icon_state = "blue_dagger"
	item_state = "knife"
	force = 27
	throwforce = 15
	w_class = 2.0

/obj/item/urist/blade/bronzesword
	name = "Bronze Sword"
	desc = "A razor sharp sword."
	icon = 'icons/urist/items/uristweapons.dmi'
	icon_state = "bronze_sword"
	item_state = "claymore"
	force = 15
	throwforce = 9
	w_class = 4.0
	slot_flags = SLOT_BELT|SLOT_BACK

/obj/item/urist/blade/addysword
	name = "Adamantite  Sword"
	desc = "A razor sharp sword."
	icon = 'icons/urist/items/uristweapons.dmi'
	icon_state = "green_sword"
	item_state = "claymore"
	force = 30
	throwforce = 15
	w_class = 4.0
	slot_flags = SLOT_BELT|SLOT_BACK


/obj/item/urist/blade/runesword
	name = "Runeite Sword"
	desc = "A razor sharp sword."
	icon = 'icons/urist/items/uristweapons.dmi'
	icon_state = "blue_sword"
	item_state = "claymore"
	force = 50
	throwforce = 20
	w_class = 4.0
	slot_flags = SLOT_BELT|SLOT_BACK

//a simple crutch, with a more medical look then the gentleman's cane

/obj/item/cane/crutch
	name ="crutch"
	desc = "A long stick with a crosspiece at the top, used to help with walking."
	icon = 'icons/urist/items/uristweapons.dmi'
	item_icons = list(
			slot_l_hand_str = 'icons/uristmob/items_lefthand.dmi',
			slot_r_hand_str = 'icons/uristmob/items_righthand.dmi',
		)
	icon_state = "crutch"
	item_state = "crutch"

//a white cane for the blind or visually impared

/obj/item/cane/white
	name = "white cane"
	desc = "A white cane. They are commonly used by the blind or visually impaired as a mobility tool or as a courtesy to others."
	icon = 'icons/urist/items/uristweapons.dmi'
	item_icons = list(
			slot_l_hand_str = 'icons/uristmob/items_lefthand.dmi',
			slot_r_hand_str = 'icons/uristmob/items_righthand.dmi',
		)
	icon_state = "whitecane"
	item_state = "whitecane"

//the code for tapping someone with the cane

/obj/item/cane/white/attack(mob/M as mob, mob/user as mob)
	if(user.a_intent == I_HELP)
		user.visible_message("<span class='notice'>\The [user] has lightly tapped [M] on the ankle with their white cane!</span>")
		return TRUE
	else
		. = ..()


//a telescopic white cane, click on it in hand to extend and retract it
//Code for Telescopic White Cane writen by Gozulio

/obj/item/cane/white/collapsible
	name = "telescopic white cane"
	desc = "A telescopic white cane. They are commonly used by the blind or visually impaired as a mobility tool or as a courtesy to others."
	icon = 'icons/urist/items/uristweapons.dmi'
	icon_state = "whitecane1in"
	item_state = "whitecanein"
	item_icons = list(
			slot_l_hand_str = 'icons/uristmob/items_lefthand.dmi',
			slot_r_hand_str = 'icons/uristmob/items_righthand.dmi',
		)
	slot_flags = SLOT_BELT
	w_class = ITEM_SIZE_SMALL
	force = 3
	var/on = 0

//the code to make the cane extend and retract

/obj/item/cane/white/collapsible/attack_self(mob/user as mob)
	on = !on
	if(on)
		user.visible_message("<span class='notice'>\The [user] extends the white cane.</span>",\
				"<span class='warning'>You extend the white cane.</span>",\
				"You hear an ominous click.")
		icon = 'icons/urist/items/uristweapons.dmi'
		icon_state = "whitecane1out"
		item_state_slots = list(slot_r_hand_str = "whitecane", slot_l_hand_str = "whitecane")
		w_class = ITEM_SIZE_NORMAL
		force = 5
		attack_verb = list("smacked", "struck", "cracked", "beaten")
	else
		user.visible_message("<span class='notice'>\The [user] collapses the white cane.</span>",\
		"<span class='notice'>You collapse the white cane.</span>",\
		"You hear a click.")
		icon_state = "whitecane1in"
		item_state_slots = list(slot_r_hand_str = "whitecanein", slot_l_hand_str = "whitecanein")
		w_class = ITEM_SIZE_SMALL
		force = 3
		attack_verb = list("hit", "poked", "prodded")

	if(istype(user,/mob/living/carbon/human))
		var/mob/living/carbon/human/H = user
		H.update_inv_l_hand()
		H.update_inv_r_hand()

	playsound(src.loc, 'sound/weapons/empty.ogg', 50, 1)
	add_fingerprint(user)
	return TRUE

//nerva knife needed to not be called master at arms
/obj/item/material/knife/folding/swiss/sec/nerva
	name = "security officer's combi-knife"

/obj/item/gun/projectile/shotgun/doublebarrel/quadruplebarrel
	name = "quadruple-barreled shotgun"
	desc = "A quadruple-barreled shotgun, in case you need more boom. Whoever modified this forgot to replace the fireselecter mechanism."
	icon = 'icons/urist/items/shotguns.dmi'
	icon_state = "qshotgun"
	item_state = "dshotgun"
	item_icons = URIST_ALL_ONMOBS
	wielded_item_state = "dshotgun-wielded"
	load_method = SINGLE_CASING|SPEEDLOADER
	handle_casings = CYCLE_CASINGS
	max_shells = 4
	w_class = ITEM_SIZE_HUGE
	force = 10
	obj_flags =  OBJ_FLAG_CONDUCTIBLE
	caliber = CALIBER_SHOTGUN
	origin_tech = list(TECH_COMBAT = 3, TECH_MATERIAL = 1)
	ammo_type = /obj/item/ammo_casing/shotgun/pellet
	one_hand_penalty = 8

	burst_delay = 1 // Slight delay to make up for double the barrels.
	firemodes = list(
		list(mode_name="fire one barrel at a time", burst=1),
		list(mode_name="fire both barrels at once", burst=2), // You can still only fire two at a time.
		)

/obj/item/gun/projectile/shotgun/doublebarrel/quadsawn
	name = "quadruple sawn-off shotgun"
	desc = "A sawn off quadriple barreled shotgun, incredibly impractical and inaccurate, but concealable."
	icon = 'icons/urist/items/shotgun.dmi'
	icon_state = "qsawnshotgun"
	item_state = "qsawnshotgun"
	item_icons = URIST_ALL_ONMOBS
	wielded_item_state = "sawnshotgun-wielded"
	slot_flags = SLOT_BELT // No holster for this.
	ammo_type = /obj/item/ammo_casing/shotgun/pellet
	w_class = ITEM_SIZE_NORMAL
	force = 5
	one_hand_penalty = 5
	bulk = 2

/obj/item/gunattachment/barrel/quadrupleconversion
	icon_state = "quadrupleconversion"
	name = "quadruple-barrel conversion kit"
	desc = "A conversion kit with two barrels and a new firing mechanism to turn a double-barrel into a quad-ruple barrel."

/obj/item/storage/box/syndie_kit/quadrupleconversion
	startswith = list(
		/obj/item/gunattachment/barrel/quadrupleconversion,
		/obj/item/wrench)

/obj/item/gun/projectile/shotgun/doublebarrel/attackby(obj/item/I, mob/user)
	..()

	if(istype(I, /obj/item/gunattachment/barrel/quadrupleconversion))
		to_chat(user, "<span class='notice'>You carefully attach the second set of barrels to the shotgun.</span>")
		..()

		/obj/item/gun/projectile/shotgun/doublebarrel/quadruplebarrel
		scoped_accuracy = 9
		scope_zoom = 2
		verbs += /obj/item/gun/proc/scope
		icon_state = "scopedhuntrifle"
		item_state = "scopedhuntrifle"
		wielded_item_state = "scopedhuntrifle2"
		update_icon()
		user.remove_from_mob(I)
		qdel(I)

	else if(istype(I, /obj/item/wrench) && scoped)
		to_chat(user, "<span class='notice'>You remove the scope from the rifle.</span>")
		scoped = 0
		scoped_accuracy = 0
		scope_zoom = 0
		verbs -= /obj/item/gun/proc/scope
		wielded_item_state = "huntrifle2"
		icon_state = "huntrifle"
		item_state = "huntrifle"
		update_icon()
		new /obj/item/gunattachment/scope/huntrifle(user.loc)

/obj/item/gun/projectile/manualcycle/hunterrifle/on_update_icon()
	if(scoped)
		if(bolt_open)
			icon_state = "scopedhuntrifle_alt"
		else
			icon_state = "scopedhuntrifle"

	else if(!scoped)
		if(bolt_open)
			icon_state = "huntrifle_alt"
		else
			icon_state = "huntrifle"

/obj/item/gun/projectile/manualcycle/hunterrifle/scoped
	name = "scoped hunting rifle"
	scoped = 1
	wielded_item_state = "scopedhuntrifle2"
	icon_state = "scopedhuntrifle"
	item_state = "scopedhuntrifle"
	scoped_accuracy = 9
	scope_zoom = 2

/obj/item/gunattachment/scope/huntrifle
	icon_state = "huntriflescope"
	name = "hunting rifle attachable scope"
	desc = "A marksman's scope designed to be attached to a hunting rifle."
	matter = list(DEFAULT_WALL_MATERIAL = 1000,"glass" = 500)
