//science

/singleton/hierarchy/outfit/job/nerva/scientist
	name = OUTFIT_JOB_NAME("Scientist - Nerva")
	uniform = /obj/item/clothing/under/urist/nerva/sci
	suit = /obj/item/clothing/suit/storage/toggle/urist/science
	shoes = /obj/item/clothing/shoes/white
	pda_type = /obj/item/modular_computer/pda/science
	id_types = list(/obj/item/card/id/nerva_scientist)
	l_ear = /obj/item/device/radio/headset/nervananotrasen

/singleton/hierarchy/outfit/job/nerva/scientist/New()
	..()
	BACKPACK_OVERRIDE_RESEARCH
