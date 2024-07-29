/obj/item/ammo_magazine/pistol/rubber
	ammo_type = /obj/item/ammo_casing/pistol/rubber

/obj/item/ammo_magazine/pistol/flash
	ammo_type = /obj/item/ammo_casing/pistol/flash

/obj/item/ammo_magazine/rifle/military/rubber
	ammo_type = /obj/item/ammo_casing/rifle/military/rubber

/obj/item/ammo_magazine/rifle/military/flash
	ammo_type = /obj/item/ammo_casing/rifle/military/flash

/obj/item/ammo_magazine/rifle/rubber
	ammo_type = /obj/item/ammo_casing/rifle/rubber

/obj/item/ammo_magazine/rifle/flash
	ammo_type = /obj/item/ammo_casing/rifle/flash

/obj/item/ammo_casing/pistol/rubber
	desc = "A rubber bullet casing."
	projectile_type = /obj/item/projectile/bullet/pistol/rubber

/obj/item/ammo_casing/pistol/flash
	desc = "A flash shell casing."
	projectile_type = /obj/item/projectile/energy/flash

/obj/item/ammo_casing/rifle/flash
	desc = "A flash shell casing."
	projectile_type = /obj/item/projectile/energy/flash

/obj/item/ammo_casing/rifle/rubber
	desc = "A rubber bullet casing."
	projectile_type = /obj/item/projectile/bullet/rifle/rubber

/obj/item/ammo_casing/rifle/military/flash
	desc = "A flash shell casing."
	projectile_type = /obj/item/projectile/energy/flash

/obj/item/ammo_casing/rifle/military/rubber
	desc = "A rubber bullet casing."
	projectile_type = /obj/item/projectile/bullet/rifle/military/rubber

/obj/item/ammo_magazine/hi2521smg9mm/rubber
	name = "HI-2521-SMG magazine (rubber)"
	ammo_type = /obj/item/ammo_casing/pistol/small/rubber

/obj/item/ammo_magazine/a50
	icon = 'icons/urist/items/ammo.dmi'
	icon_state = "50ae"
	origin_tech = list(TECH_COMBAT = 2)
	mag_type = MAGAZINE
	caliber = CALIBER_PISTOL_MAGNUM
	matter = list(MATERIAL_STEEL = 1680)
	ammo_type = /obj/item/ammo_casing/pistol/magnum
	max_ammo = 7
	multiple_sprites = 1

/obj/item/ammo_magazine/a50/empty
	initial_ammo = 0

/obj/item/ammo_magazine/a75
	icon = 'icons/urist/items/ammo.dmi'
	icon_state = "20mm"
	mag_type = MAGAZINE
	caliber = CALIBER_GYROJET
	ammo_type = /obj/item/ammo_casing/gyrojet
	multiple_sprites = 1
	max_ammo = 4

/obj/item/ammo_magazine/bundle/shotbundle
	name = "fistful of shotgun shells"
	desc = "A fistful of shotgun shells."
	icon = 'icons/urist/items/shotbundle.dmi'
	icon_state = "slshell-1"
	caliber = CALIBER_SHOTGUN
	ammo_type = /obj/item/ammo_casing/shotgun

/obj/item/ammo_magazine/bundle
	initial_ammo = 0
	max_ammo = 4
	w_class = ITEM_SIZE_NORMAL
	matter = list(MATERIAL_STEEL = 0)
	multiple_sprites = 1

/obj/item/ammo_magazine/bundle/attack_hand(mob/user)
	. = ..()
	check_ammo_count(user)

/obj/item/ammo_magazine/bundle/proc/check_ammo_count(mob/user)
	if(length(stored_ammo) <= 1)
		user.drop_from_inventory(src, get_turf(src))
		user.put_in_hands(stored_ammo[1])
		stored_ammo.Cut()
		qdel(src)

/obj/item/ammo_magazine/bundle/attack_self(mob/user)
	..()
	qdel(src)

/obj/item/ammo_magazine/bundle/on_update_icon()
	overlays.Cut()
	var/count = 1
	for(var/obj/item/ammo_casing/C in stored_ammo)
		overlays += image(src.icon, "[C.icon_state]-[count]")
		count++

/obj/item/ammo_magazine/shotholder
	name = "shotgun slug holder"
	desc = "A convenient pouch that holds 12 gauge shells."
	icon_state = "shotholder"
	caliber = CALIBER_SHOTGUN
	ammo_type = /obj/item/ammo_casing/shotgun
	matter = list(MATERIAL_STEEL = 1440)
	max_ammo = 4
	multiple_sprites = 1
	var/marking_color

/obj/item/ammo_magazine/shotholder/on_update_icon()
	..()
	overlays.Cut()
	if(marking_color)
		var/image/I = image(icon, "shotholder-marking")
		I.color = marking_color
		overlays += I

/obj/item/ammo_magazine/shotholder/shell
	name = "shotgun shell holder"
	ammo_type = /obj/item/ammo_casing/shotgun/pellet
	marking_color = COLOR_RED_GRAY

/obj/item/ammo_magazine/shotholder/beanbag
	name = "beanbag shell holder"
	ammo_type = /obj/item/ammo_casing/shotgun/beanbag
	matter = list(MATERIAL_STEEL = 720)
	marking_color = COLOR_PAKISTAN_GREEN

/obj/item/ammo_magazine/shotholder/flash
	name = "illumination shell holder"
	ammo_type = /obj/item/ammo_casing/shotgun/flash
	matter = list(MATERIAL_STEEL = 360, MATERIAL_GLASS = 360)
	marking_color = COLOR_PALE_YELLOW

/obj/item/ammo_magazine/shotholder/stun
	name = "stun shell holder"
	ammo_type = /obj/item/ammo_casing/shotgun/stunshell
	matter = list(MATERIAL_STEEL = 1440, MATERIAL_GLASS = 2880)
	marking_color = COLOR_MUZZLE_FLASH

/obj/item/ammo_magazine/shotholder/empty
	name = "shotgun ammunition holder"
	matter = list(MATERIAL_STEEL = 250)
	initial_ammo = 0

/obj/item/ammo_casing/a75
	caliber = CALIBER_GYROJET
	projectile_type = /obj/item/projectile/bullet/gyro
	icon = 'icons/urist/items/ammo.dmi'
	icon_state = "lcasing"
	spent_icon = "lcasing-spent"

/obj/item/ammo_magazine/speedloader/sks

	name = "stripper clip (7.62mm)"
	desc = "A stripper clip commonly used for semiautomatic 7.62mm firearms.."
	icon_state = "pclip" // change
	caliber = CALIBER_RIFLE
	ammo_type = /obj/item/ammo_casing/rifle
	matter = list(MATERIAL_STEEL = 1500)
	max_ammo = 10
	multiple_sprites = 1

/obj/item/ammo_magazine/varmintrifle

	icon = 'icons/urist/items/ammo.dmi'
	icon_state = "50ae" // change
	origin_tech = list(TECH_COMBAT = 2)
	mag_type = MAGAZINE
	caliber = CALIBER_PISTOL_VARMINT
	matter = list(MATERIAL_STEEL = 1680)
	ammo_type = /obj/item/ammo_casing/pistol/varmint
	max_ammo = 10
	multiple_sprites = 1

/obj/item/ammo_magazine/varmintrifle/extended
	name = "20-round magazine (.22LR)"
	desc = "A 20 round detachable magazine, commonly used in varmint rifles."
	icon = 'icons/urist/items/ammo.dmi'
	icon_state = "50ae" // change
	origin_tech = list(TECH_COMBAT = 2)
	mag_type = MAGAZINE
	caliber = CALIBER_PISTOL_VARMINT
	matter = list(MATERIAL_STEEL = 1680)
	ammo_type = /obj/item/ammo_casing/pistol/varmint
	max_ammo = 20
	multiple_sprites = 1

/obj/item/ammo_magazine/varmintpistol
	name = "pistol magazine (.22LR)"
	desc = "A pistol magazine used for .22LR pistols."
	icon = 'icons/urist/items/ammo.dmi'
	icon_state = "50ae" // change
	origin_tech = list(TECH_COMBAT = 2)
	mag_type = MAGAZINE
	caliber = CALIBER_PISTOL_VARMINT
	matter = list(MATERIAL_STEEL = 1680)
	ammo_type = /obj/item/ammo_casing/pistol/varmint
	max_ammo = 10
	multiple_sprites = 1

/obj/item/ammo_magazine/varmintpistolhp
	name = "pistol magazine (.22HP)"
	desc = "A pistol magazine used for .22LR pistols, loaded with hollowpoint."
	icon = 'icons/urist/items/ammo.dmi'
	icon_state = "50ae" // change
	origin_tech = list(TECH_COMBAT = 2)
	mag_type = MAGAZINE
	caliber = CALIBER_PISTOL_VARMINT
	matter = list(MATERIAL_STEEL = 1680)
	ammo_type = /obj/item/ammo_casing/pistol/varmint/hollowpoint
	max_ammo = 10
	multiple_sprites = 1

/obj/item/ammo_magazine/kolibri
	name = "pistol magazine (2mm)"
	desc = "A tiny magazine designed for kolibri pistols."
	icon = 'icons/urist/items/ammo.dmi'
	icon_state = "50ae" // change
	origin_tech = list(TECH_COMBAT = 2)
	mag_type = MAGAZINE
	caliber = CALIBER_PISTOL_TINY
	matter = list(MATERIAL_STEEL = 1680)
	ammo_type = /obj/item/ammo_casing/pistol/kolibri
	max_ammo = 8
	multiple_sprites = 1

/obj/item/ammo_casing/nitro_express
	name = "nitro express casing"
	desc = "A Nitro Express cartridge."
	icon = 'icons/urist/items/ammo.dmi'
	icon_state = "slshell"
	spent_icon = "slshell-spent"
	var/global_icon = "slshell-casing"
	caliber = CALIBER_NITROEXPRESS
	projectile_type = /obj/item/projectile/bullet/rifle/nitroexpress
	matter = list(MATERIAL_STEEL = 360)
	fall_sounds = list('sound/weapons/guns/shotgun_fall.ogg')

/obj/item/ammo_magazine/cycler
	name = "PDW magazine (4.73mm)"
	desc = "A caseless PDW magazine.."
	icon = 'icons/urist/items/ammo.dmi'
	icon_state = "50ae" // change
	origin_tech = list(TECH_COMBAT = 2)
	mag_type = MAGAZINE
	caliber = CALIBER_RIFLE_CASELESS
	matter = list(MATERIAL_STEEL = 1680)
	ammo_type = /obj/item/ammo_casing/caseless // change
	max_ammo = 20
	multiple_sprites = 1

/obj/item/ammo_casing/pistol/varmint
	desc = "A small .22LR bullet casing."
	caliber = CALIBER_PISTOL_SMALL
	projectile_type = /obj/item/projectile/bullet/varmint
	icon_state = "smallcasing"
	spent_icon = "smallcasing-spent"

/obj/item/ammo_casing/pistol/varmint/hollowpoint
	desc = "A small .22 Hollow Point bullet casing."
	caliber = CALIBER_PISTOL_SMALL
	projectile_type = /obj/item/projectile/bullet/varmint/hollowpoint
	icon_state = "smallcasing"
	spent_icon = "smallcasing-spent"

/obj/item/ammo_casing/pistol/kolibri
	desc = "A tiny 2mm pistol bullet casing."
	caliber = CALIBER_PISTOL_TINY
	projectile_type = /obj/item/projectile/bullet/pistol/kolibri
	icon_state = "smallcasing"
	spent_icon = "smallcasing-spent"

/obj/item/ammo_casing/caseless
	desc = "a caseless PDW bullet"
	caliber = CALIBER_RIFLE_CASELESS
	projectile_type = /obj/item/projectile/bullet/caseless
	icon_state = "smallcasing"
	spent_icon = "smallcasing-spent"
