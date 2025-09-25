//cargo

/singleton/hierarchy/outfit/job/nerva/supplytech
	name = OUTFIT_JOB_NAME("Supply Technician")
	uniform = /obj/item/clothing/under/urist/nerva/cargo
	suit = /obj/item/clothing/suit/storage/toggle/urist/cargojacket
	l_ear = /obj/item/device/radio/headset/headset_cargo
	shoes = /obj/item/clothing/shoes/workboots
	id_types = list(/obj/item/card/id/cargo)
	pda_type = /obj/item/modular_computer/pda/cargo
	gloves = /obj/item/clothing/gloves/urist/leather


/singleton/hierarchy/outfit/job/science/nervaroboticist
	name = OUTFIT_JOB_NAME("Nerva Roboticist")
	uniform = /obj/item/clothing/under/rank/roboticist
	suit = /obj/item/clothing/suit/storage/toggle/labcoat/robotics
	l_ear = /obj/item/device/radio/headset/headset_cargo
	shoes = /obj/item/clothing/shoes/black
	belt = /obj/item/storage/belt/robotics/full
	id_types = list(/obj/item/card/id/science/roboticist)
	pda_slot = slot_r_store
	pda_type = /obj/item/modular_computer/pda/roboticist

/singleton/hierarchy/outfit/job/science/nervaroboticist/New()
	..()
	backpack_overrides.Cut()
