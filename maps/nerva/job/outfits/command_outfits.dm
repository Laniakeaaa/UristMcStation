//cappy

/singleton/hierarchy/outfit/job/nerva/captain //done
	name = OUTFIT_JOB_NAME("Nerva Captain")
	uniform = /obj/item/clothing/under/urist/nerva/capregular
	suit = /obj/item/clothing/suit/storage/toggle/urist/nervacapjacket
	l_ear = /obj/item/device/radio/headset/heads/nerva_cap
	shoes = /obj/item/clothing/shoes/urist/capboots
	id_types = list(/obj/item/card/id/gold)
	pda_type = /obj/item/modular_computer/pda/captain
	gloves = /obj/item/clothing/gloves/thick/combat
	head = /obj/item/clothing/head/urist/beret/nervacap

/singleton/hierarchy/outfit/job/nerva/firstofficer
	name = OUTFIT_JOB_NAME("First Officer")
	uniform = /obj/item/clothing/under/urist/nerva/foregular
	l_ear = /obj/item/device/radio/headset/heads/firstofficer
	shoes = /obj/item/clothing/shoes/black
	id_types = list(/obj/item/card/id/firstofficer)
	pda_type = /obj/item/modular_computer/pda/heads/hop //change
	gloves = /obj/item/clothing/gloves/color/grey
	head = /obj/item/clothing/head/urist/beret/nervafo

//so

/singleton/hierarchy/outfit/job/nerva/secondofficer //done
	name = OUTFIT_JOB_NAME("Second Officer")
	uniform = /obj/item/clothing/under/urist/nerva/soregular
	l_ear = /obj/item/device/radio/headset/heads/secondofficer
	shoes = /obj/item/clothing/shoes/black
	id_types = list(/obj/item/card/id/secondofficer)
	pda_type = /obj/item/modular_computer/pda/heads/hop
	gloves = /obj/item/clothing/gloves/color/grey
	head = /obj/item/clothing/head/urist/beret/nervaso

// Senior Scientist

/singleton/hierarchy/outfit/job/nerva/seniorscientist //Reworked old RD stuff from Torch
	name = OUTFIT_JOB_NAME("Nerva Senior Scientist")
	l_ear = /obj/item/device/radio/headset/heads/nerva_senior
	uniform = /obj/item/clothing/under/urist/nerva/seniornt
	suit = /obj/item/clothing/suit/storage/toggle/urist/science
	shoes = /obj/item/clothing/shoes/brown
	l_hand = /obj/item/material/folder/clipboard
	id_types = list(/obj/item/card/id/nerva_senior_scientist)
	pda_type = /obj/item/modular_computer/pda/science

// CMO






/singleton/hierarchy/outfit/job/security/nervacos //done
	name = OUTFIT_JOB_NAME("Chief of Security")
	uniform = /obj/item/clothing/under/urist/nerva/cosregular
	l_ear = /obj/item/device/radio/headset/heads/nerva_cos
	id_types = list(/obj/item/card/id/security/head)
	pda_type = /obj/item/modular_computer/pda/heads/hos
	backpack_contents = list(/obj/item/handcuffs = 1)
	head = /obj/item/clothing/head/beret/sec/nervacos

/singleton/hierarchy/outfit/job/nerva/qm
	name = OUTFIT_JOB_NAME("Nerva Quartermaster")
	uniform = /obj/item/clothing/under/urist/nerva/qm
	suit = /obj/item/clothing/suit/storage/toggle/urist/qmjacket
	l_ear = /obj/item/device/radio/headset/heads/nerva_qm
	glasses = /obj/item/clothing/glasses/sunglasses
	shoes = /obj/item/clothing/shoes/black
	id_types = list(/obj/item/card/id/cargo/head)
	pda_type = /obj/item/modular_computer/pda/heads/hop
	gloves = /obj/item/clothing/gloves/color/grey

/singleton/hierarchy/outfit/job/bodyguard
	name = OUTFIT_JOB_NAME("Bodyguard") //done
	uniform = /obj/item/clothing/under/bodyguard
	l_ear = /obj/item/device/radio/headset/nerva_guard
	shoes = /obj/item/clothing/shoes/jackboots
	id_types = list(/obj/item/card/id/bodyguard)
	pda_type = /obj/item/modular_computer/pda/heads/hop
	backpack_contents = list(/obj/item/storage/box/deathimp = 1)
	gloves = /obj/item/clothing/gloves/thick/combat

/singleton/hierarchy/outfit/job/bodyguard/New()
	..()
	BACKPACK_OVERRIDE_SECURITY
