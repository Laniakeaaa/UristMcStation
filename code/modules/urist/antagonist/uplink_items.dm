// For Urist Specific Antagonist Items. - Y

/obj/item/implant/miu
	name = "MIU implant"
	desc = "A military-grade MIU camera implant, popular with law enforcement and cyberhackers."
	icon_state = "implant_evil"
	origin_tech = list(TECH_MATERIAL = 2, TECH_BIO = 3, TECH_ESOTERIC = 3)
	hidden = 1
	action_button_name = "Toggle MIU Implant"
	var/active = FALSE
	var/mob/observer/eye/cameranet/eye

/obj/item/implant/miu/get_data()
	return {"
	<b>Implant Specifications:</b><BR>
	<b>Name:</b> Hephaestus Industries MIU v3.4 Mental Camera Interfacer Implant
	<b>Life:</b> Activates upon interfacing.
	<b>Important Notes:</b> Interfacing with network requires rolling eyes upwards into skull.
	<HR>
	<b>Implant Details:</b><BR>
	<b>Function:</b> Contains a compact mental-neural interface allowing backdoor access to secured camera networks.
	<b>Special Features:</b> Backdoor Access to Camera Network.<BR>"}

/obj/item/implant/miu/Initialize()
	. = ..()
	eye = new(src)
	eye.name_sufix = "camera MIU"

/obj/item/implant/miu/trigger(emote, mob/living/carbon/source as mob)
	if (emote == "eyerollup")
		activate()

/obj/item/implant/miu/activate(mob/user)
	active = !active
	to_chat(user, SPAN_NOTICE("You [active ? "" : "dis"]engage \the [src]."))
	if(active)
		engage_miu(user)
	else
		disengage_miu(user)

/obj/item/implant/miu/proc/engage_miu(mob/user)
	if(!active)
		return
	eye.possess(user)
	to_chat(eye.owner, SPAN_NOTICE("You feel disorented for a moment as your mind connects to the camera network."))

/obj/item/implant/miu/proc/disengage_miu(mob/user)
	if(user == eye.owner)
		to_chat(eye.owner, SPAN_NOTICE("You feel disorented for a moment as your mind disconnects from the camera network."))
		eye.release(eye.owner)
		eye.forceMove(src)

/obj/item/implant/miu/implanted(mob/source)
	source.StoreMemory("A implant can be activated by using the eye roll up emote, <B> say *eyerollup</B> to attempt to activate.", /singleton/memory_options/system)
	to_chat(source, "The implanted MIU implant can be activated by using the eye roll up emote, <B>say *eyerollup</B> to attempt to activate it.")
	return TRUE

/obj/item/storage/box/syndie_kit/imp_miu
	startswith = list(
		/obj/item/implanter/miu,
		/obj/item/implantpad
		)

/obj/item/implanter/miu
	name = "implanter (MIU)"
	imp = /obj/item/implant/miu

/obj/item/implantcase/miu
	name = "glass case - 'MIU'"
	imp = /obj/item/implant/miu
