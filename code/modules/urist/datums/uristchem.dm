/datum/chemical_reaction/pilk
	name = "Pilk"
	result = /datum/reagent/drink/pilk
	required_reagents = list(/datum/reagent/drink/milk = 1, /datum/reagent/drink/space_cola = 1)
	result_amount = 2
	mix_message = "The cola mixes together with the milk, forming a gross, off-brown substance. A chill goes down your spine, and in the distance, you think you can hear someone weeping."

/datum/reagent/drink/pilk
	name = "Pilk"
	description = "Hell, in drink form."
	taste_description = "crushing depression and lactose"
	reagent_state = LIQUID
	color = "#bfa17b"
	adj_drowsy = -1
	adj_temp = -2

	glass_name = "Pilk"
	glass_desc = "A glass of pilk, an unholy combination of milk and cola. There's a special place in hell for people who mix this drink."
	glass_special = list(DRINK_FIZZ)

/datum/reagent/drink/pilk/affect_ingest(mob/living/carbon/M, var/alien, var/removed)
	..()
	M.adjustBrainLoss(0.1)

/datum/reagent/toxin/dropwort //
	name = "Dropwort"
	description = "A powerful cardiovascular toxicant, it metabolizes slowly before causing huge heart damage. It is derived from hemlock water-dropwort. "
	taste_description = "sweet"
	reagent_state = LIQUID
	color = "#e8e8e8"

/datum/reagent/toxin/oenanthotoxin
	name = "Oenanthotoxin"
	description = "A toxin metabolized from dropwort, it causes severe cardiovascular damage and acts is metabolized quickly and painfully. "
	taste_description = "plesantly sweet"
	reagent_state = LIQUID
	metabolism = REM * 5
	color = "#d1b228"
	strength = 35

/datum/reagent/toxin/oenanthotoxin/affect_blood(mob/living/carbon/M, removed)
	if (IS_METABOLICALLY_INERT(M))
		return
// FIX THIS LATER
	if(M.chem_doses[/datum/reagent/toxin/oenanthotoxin] > 0)
		M.reagents.add_reagent(/datum/reagent/toxin/amaspores, metabolism) // The spores lay dormant for as long as any traces of amatoxin remain
		if (prob(5))
			to_chat(M, SPAN_DANGER("Everything itches, how uncomfortable!"))
		if (prob(10))
			to_chat(M, SPAN_WARNING("Your eyes are watering, it's hard to see!"))
			M.eye_blurry = max(M.eye_blurry, 10)
		if (prob(10))
			to_chat(M, SPAN_DANGER("Your throat itches uncomfortably!"))
			M.custom_emote(2, "coughs!")
		return

	M.add_chemical_effect(CE_SLOWDOWN, 1)

	if (prob(15))
		M.Weaken(5)
		M.add_chemical_effect(CE_VOICELOSS, 5)
	if (prob(30))
		M.eye_blurry = max(M.eye_blurry, 10)

	M.take_organ_damage(3 * removed, 0, ORGAN_DAMAGE_FLESH_ONLY)
	M.adjustToxLoss(5 * removed, 0, ORGAN_DAMAGE_FLESH_ONLY)
