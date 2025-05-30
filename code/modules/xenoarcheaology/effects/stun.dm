/datum/artifact_effect/stun
	name = "stun"

/datum/artifact_effect/stun/New()
	..()
	effect_type = pick(EFFECT_PSIONIC, EFFECT_ORGANIC)

/datum/artifact_effect/stun/DoEffectTouch(mob/toucher)
	if(toucher && iscarbon(toucher))
		var/mob/living/carbon/C = toucher
		var/susceptibility = GetAnomalySusceptibility(C)
		if(prob(susceptibility * 100))
			to_chat(C, SPAN_WARNING("A powerful force overwhelms your consciousness."))
			C.Weaken(rand(5,20) * susceptibility)
			C.stuttering += 30 * susceptibility
			C.Stun(rand(5,20) * susceptibility)

/datum/artifact_effect/stun/DoEffectAura()
	if(holder)
		var/turf/T = get_turf(holder)
		for (var/mob/living/carbon/C in range(src.effectrange,T))
			var/susceptibility = GetAnomalySusceptibility(C)
			if(prob(10 * susceptibility))
				to_chat(C, SPAN_WARNING("Your body goes numb for a moment."))
				C.Weaken(2)
				C.stuttering += 2
				if(prob(10))
					C.Stun(1)
			else if(prob(10))
				to_chat(C, SPAN_WARNING("You feel numb."))

/datum/artifact_effect/stun/DoEffectPulse()
	if(holder)
		var/turf/T = get_turf(holder)
		for (var/mob/living/carbon/C in range(src.effectrange,T))
			var/susceptibility = GetAnomalySusceptibility(C)
			if(prob(100 * susceptibility))
				to_chat(C, SPAN_WARNING("A wave of energy overwhelms your senses!"))
				C.SetWeakened(4 * susceptibility)
				C.stuttering = 4 * susceptibility
				if(prob(10))
					C.SetStunned(1 * susceptibility)

/datum/artifact_effect/stun/destroyed_effect()
	. = ..()

	if(holder)
		var/turf/T = get_turf(holder)
		for (var/mob/living/carbon/C in range(effectrange * 2,T))
			var/susceptibility = GetAnomalySusceptibility(C)
			if(prob(100 * susceptibility))
				to_chat(C, SPAN_WARNING("A wave of energy overwhelms your senses!"))
				C.SetWeakened(4 * susceptibility)
				C.stuttering = 4 * susceptibility
				if(prob(10))
					C.SetStunned(1 * susceptibility)
