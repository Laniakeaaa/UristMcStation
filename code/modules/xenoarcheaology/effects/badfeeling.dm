/datum/artifact_effect/badfeeling
	name = "badfeeling"
	effect_type = EFFECT_PSIONIC
	effect_icon = 'icons/effects/effects.dmi'
	effect_state = "summoning"
	var/list/messages = list("You feel worried.",
		"Something doesn't feel right.",
		"You get a strange feeling in your gut.",
		"Your instincts are trying to warn you about something.",
		"Someone just walked over your grave.",
		"There's a strange feeling in the air.",
		"There's a strange smell in the air.",
		"The tips of your fingers feel tingly.",
		"You feel witchy.",
		"You have a terrible sense of foreboding.",
		"You've got a bad feeling about this.",
		"Your scalp prickles.",
		"The light seems to flicker.",
		"The shadows seem to lengthen.",
		"The walls are getting closer.",
		"Something is wrong.")

	var/list/drastic_messages = list("You've got to get out of here!",
		"Someone's trying to kill you!",
		"There's something out there!",
		"What's happening to you?",
		"OH GOD!",
		"HELP ME!")

/datum/artifact_effect/badfeeling/DoEffectTouch(mob/user)
	if(user)
		if (istype(user, /mob/living/carbon/human))
			var/mob/living/carbon/human/H = user
			if(prob(50))
				if(prob(75))
					to_chat(H, SPAN_DANGER("[pick(drastic_messages)]"))
				else
					to_chat(H, SPAN_WARNING("[pick(messages)]"))

			if(prob(50))
				H.dizziness += rand(3,5)

/datum/artifact_effect/badfeeling/DoEffectAura()
	if(holder)
		var/turf/T = get_turf(holder)
		for (var/mob/living/carbon/human/H in range(src.effectrange,T))
			if(prob(5))
				if(prob(75))
					to_chat(H, SPAN_WARNING("[pick(messages)]"))
				else
					to_chat(H, SPAN_DANGER("[pick(drastic_messages)]"))

			if(prob(10))
				H.dizziness += rand(3,5)
		return 1

/datum/artifact_effect/badfeeling/DoEffectPulse()
	if(holder)
		var/turf/T = get_turf(holder)
		for (var/mob/living/carbon/human/H in range(src.effectrange,T))
			if(prob(50))
				if(prob(95))
					to_chat(H, SPAN_DANGER("[pick(drastic_messages)]"))
				else
					to_chat(H, SPAN_WARNING("[pick(messages)]"))

			if(prob(50))
				H.dizziness += rand(3,5)
			else if(prob(25))
				H.dizziness += rand(5,15)
		return 1

/datum/artifact_effect/badfeeling/destroyed_effect()
	. = ..()

	for (var/mob/living/carbon/human/H in range(effectrange, get_turf(holder)))
		H.Paralyse(4)
		H.hallucination(50, 100)
