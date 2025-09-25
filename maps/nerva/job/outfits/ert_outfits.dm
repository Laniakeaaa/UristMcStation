/singleton/hierarchy/outfit/job/nerva/ert
	name = OUTFIT_JOB_NAME("ERT - Nerva")
	uniform = /obj/item/clothing/under/syndicate/combat
	head = /obj/item/clothing/head/beret/centcom/officer
	gloves = /obj/item/clothing/gloves/thick
	id_types = list(/obj/item/card/id/centcom/ERT)
	pda_type = /obj/item/modular_computer/pda/ert
	l_ear = /obj/item/device/radio/headset/ert
	shoes = /obj/item/clothing/shoes/dutyboots

/singleton/hierarchy/outfit/job/nerva/ert/leader
	name = OUTFIT_JOB_NAME("ERT Leader - Nerva")
	uniform = /obj/item/clothing/under/rank/centcom
	head = /obj/item/clothing/head/beret/centcom/captain

/singleton/hierarchy/outfit/job/nerva/ert/suit
	name = OUTFIT_JOB_NAME("ERT Heavy - Nerva")
	back = /obj/item/rig/ert/assetprotection
	flags = OUTFIT_RESET_EQUIPMENT | OUTFIT_ADJUSTMENT_SKIP_BACKPACK
	head = null
	gloves = null
