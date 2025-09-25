//bartender

/singleton/hierarchy/outfit/job/service/nervabartender
	name = OUTFIT_JOB_NAME("Nerva Bartender")
	uniform = /obj/item/clothing/under/rank/bartender
	id_types = list(/obj/item/card/id/civilian/chef)
	pda_type = /obj/item/modular_computer/pda



/singleton/hierarchy/outfit/job/mime
	name = OUTFIT_JOB_NAME("Mime") //done
	uniform = /obj/item/clothing/under/mime
	head = /obj/item/clothing/head/beret
	mask = /obj/item/clothing/mask/gas/mime
	gloves = /obj/item/clothing/gloves/white
	shoes = /obj/item/clothing/shoes/black
	backpack_contents = list(/obj/item/reagent_containers/food/drinks/bottle/bottleofnothing = 1, /obj/item/pen/crayon/mime = 1)
	pda_type = /obj/item/modular_computer/pda/mime
	id_types = list(/obj/item/card/id/civilian/mime)

/singleton/hierarchy/outfit/job/clown
	name = OUTFIT_JOB_NAME("Clown") //done
	uniform = /obj/item/clothing/under/rank/clown
	mask = /obj/item/clothing/mask/gas/clown_hat
	shoes = /obj/item/clothing/shoes/clown_shoes
	backpack_contents = list(/obj/item/reagent_containers/food/snacks/grown/banana = 1, /obj/item/bikehorn = 1,
		/obj/item/stamp/clown = 1, /obj/item/pen/crayon/rainbow = 1, /obj/item/storage/fancy/crayons = 1,
		/obj/item/reagent_containers/spray/waterflower = 1)
	back = /obj/item/storage/backpack/clown
	pda_type = /obj/item/modular_computer/pda/clown
	id_types = list(/obj/item/card/id/civilian/clown)
