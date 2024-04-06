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

/datum/reagent/toxin/dropwort //Syndicate Special Sauce, sorry Socrates. Doesn't engage until metabolized.
	name = "Dropwort"
	description = "A powerful cardiovascular toxicant, it metabolizes slowly before causing huge heart damage. It is derived from hemlock water-dropwort."
	taste_description = "sweet"
	reagent_state = LIQUID
	color = "#e8e8e8"

/datum/reagent/toxin/oenanthotoxin // This isn't the exact same as typical hemlock poisoning, it's disguised a little before it kicks in - Yantari
	name = "Oenanthotoxin"
	description = "A toxin metabolized from dropwort, it causes severe cardiovascular damage and acts is metabolized quickly and painfully. "
	taste_description = "plesantly sweet"
	reagent_state = LIQUID
	metabolism = REM * 5
	color = "#d1b228"
	strength = 35

/datum/reagent/toxin/oenanthotoxin/affect_blood(mob/living/carbon/M, removed) // We start with mimicking symptoms, keeping it subtle, then we make it worst.
	if (IS_METABOLICALLY_INERT(M))
		return
// FIX THIS LATER
	if(M.chem_doses[/datum/reagent/toxin/oenanthotoxin] > 0)
		M.reagents.add_reagent(/datum/reagent/toxin/amaspores, metabolism) // Similar to how amatoxin works, just more deadly.
		if (prob(5))
			to_chat(M, SPAN_DANGER("You feel antsy, your concentration wavers...")) // At the start, try to mimic nicotines messages
		if (prob(10))
			to_chat(M, SPAN_WARNING("You feel invigorated and oddly calm.")) // Similar message to nicotine still, but slightly off.
		if (prob(10))
			to_chat(M, SPAN_DANGER("Your heart feels like it's working a lot harder than usual.")) // Clear indication to your heart.
			M.custom_emote(2, "gasps!")
		return

	M.take_organ_damage(5 * removed, 0, ORGAN_DAMAGE_FLESH_ONLY)
