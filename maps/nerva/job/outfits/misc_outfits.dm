
// assistant - mainly for tool storage.
/singleton/hierarchy/outfit/job/nerva/assistant
	name = OUTFIT_JOB_NAME("Nerva Assistant")
	id_types = list(/obj/item/card/id/civilian/nerva_assistant)

//passenger
/singleton/hierarchy/outfit/job/nerva/passenger
	name = OUTFIT_JOB_NAME("Nerva Passenger")
	l_ear = /obj/item/device/radio/headset
	uniform = /obj/item/clothing/under/rank/psych/turtleneck/sweater
	shoes = /obj/item/clothing/shoes/black
	id_types = list(/obj/item/card/id)
	pda_type = /obj/item/modular_computer/pda

//stowaway
/singleton/hierarchy/outfit/job/nerva/stowaway
	name = OUTFIT_JOB_NAME("Nerva Stowaway")
	shoes = /obj/item/clothing/shoes/black
	uniform = /obj/item/clothing/under/color/grey
	id_types = null
	pda_type = null
	l_ear = null
	r_hand = /obj/item/crowbar
	l_pocket = /obj/item/wrench
	r_pocket = /obj/item/device/flashlight
