// Wire datums. Created by Giacomand.
// Was created to replace a horrible case of copy and pasted code with no care for maintability.
// Goodbye Door wires, Cyborg wires, Vending Machine wires, Autolathe wires
// Protolathe wires, APC wires and Camera wires!

#define MAX_FLAG 65535

var/global/list/same_wires = list()
// 14 colours, if you're adding more than 14 wires then add more colours here
var/global/list/wireColours = list("red", "blue", "green", "darkred", "orange", "brown", "gold", "gray", "cyan", "navy", "purple", "pink", "black", "yellow")

/datum/wires

	var/random = 0 // Will the wires be different for every single instance.
	var/atom/holder = null // The holder
	var/holder_type = null // The holder type; used to make sure that the holder is the correct type.
	var/wire_count = 0 // Max is 16
	var/wires_status = 0 // BITFLAG OF WIRES

	var/list/wires = list()
	var/list/signallers = list()

	var/table_options = " align='center'"
	var/row_options1 = " width='80px'"
	var/row_options2 = " width='260px'"
	var/window_x = 370
	var/window_y = 470

	var/list/descriptions // Descriptions of wires (datum/wire_description) for use with examining.

/datum/wires/New(atom/holder)
	..()
	src.holder = holder
	if(!istype(holder, holder_type))
		CRASH("Our holder is null/the wrong type!")

	// Generate new wires
	if(random)
		GenerateWires()
	// Get the same wires
	else
		// We don't have any wires to copy yet, generate some and then copy it.
		if(!same_wires[holder_type])
			GenerateWires()
			same_wires[holder_type] = src.wires.Copy()
		else
			var/list/wires = same_wires[holder_type]
			src.wires = wires // Reference the wires list.

/datum/wires/Destroy()
	holder = null
	return ..()

/datum/wires/proc/get_mechanics_info()
	return

/datum/wires/proc/get_interactions_info()
	RETURN_TYPE(/list)
	. = list()
	.["Multitool"] = "<p>While the wire panel is accessible, allows pulsing wires by clicking the Pulse button in the panel UI.</p>"
	.["Signaller"] = "<p>While the wire panel is accessible, can be attached to a wire by clicking the Attach Signaller button in the panel UI. An attached signaller will pulse the wire whenever it receives a signal.</p>"
	.["Wirecutters"] = "<p>While the wire panel is accessible, allows cutting and mending wires by clicking the Cut and Mend buttons in the panel UI.</p>"

/datum/wires/proc/GenerateWires()
	var/list/colours_to_pick = wireColours.Copy() // Get a copy, not a reference.
	var/list/indexes_to_pick = list()
	//Generate our indexes
	for(var/i = 1; i < MAX_FLAG && i < SHIFTL(1, wire_count); i += i)
		indexes_to_pick += i
	LIST_RESIZE(colours_to_pick, wire_count) // Downsize it to our specifications.

	while(length(colours_to_pick) && length(indexes_to_pick))
		// Pick and remove a colour
		var/colour = pick_n_take(colours_to_pick)

		// Pick and remove an index
		var/index = pick_n_take(indexes_to_pick)

		src.wires[colour] = index
		//wires = shuffle(wires)

/datum/wires/proc/Interact(mob/living/user)

	if (!user)
		return

	var/html = null
	if(holder && CanUse(user))
		html = GetInteractWindow()
	if(html)
		user.set_machine(holder)
	else
		user.unset_machine()
		// No content means no window.
		close_browser(user, "window=wires")
		return

	var/datum/browser/popup = new(user, "wires", holder.name, window_x, window_y)
	popup.set_content(html)
	popup.set_title_image(user.browse_rsc_icon(holder.icon, holder.icon_state))
	popup.open()
	return TRUE

/datum/wires/proc/GetInteractWindow()
	var/html = "<div class='block'>"
	html += "<h3>Exposed Wires</h3>"
	html += "<table[table_options]>"

	for(var/colour in wires)
		html += "<tr>"
		html += "<td[row_options1]>[SPAN_COLOR(colour, "&#9724;")][capitalize(colour)]</td>"
		html += "<td[row_options2]>"
		html += "<A href='?src=\ref[src];action=1;cut=[colour]'>[IsColourCut(colour) ? "Mend" :  "Cut"]</A>"
		html += " <A href='?src=\ref[src];action=1;pulse=[colour]'>Pulse</A>"
		html += " <A href='?src=\ref[src];action=1;attach=[colour]'>[IsAttached(colour) ? "Detach" : "Attach"] Signaller</A></td></tr>"
	html += "</table>"
	html += "</div>"

	if (random)
		html += "<i>\The [holder] appears to have tamper-resistant electronics installed.</i><br><br>" //maybe this could be more generic?

	return html

/datum/wires/Topic(href, href_list)
	..()
	if(in_range(holder, usr) && isliving(usr))

		var/mob/living/L = usr
		if(CanUse(L) && href_list["action"])

			var/obj/item/I = L.get_active_hand()

			var/obj/item/offhand_item
			if(ishuman(usr))
				var/mob/living/carbon/human/H = usr
				offhand_item = H.wearing_rig && H.wearing_rig.selected_module

			holder.add_hiddenprint(L)
			if(href_list["cut"]) // Toggles the cut/mend status
				if(isWirecutter(I) || isWirecutter(offhand_item))
					var/colour = href_list["cut"]
					CutWireColour(colour)
				else
					to_chat(L, SPAN_CLASS("error", "You need wirecutters!"))
			else if(href_list["pulse"])
				if(isMultitool(I) || isMultitool(offhand_item))
					var/colour = href_list["pulse"]
					PulseColour(colour)
				else
					to_chat(L, SPAN_CLASS("error", "You need a multitool!"))
			else if(href_list["attach"])
				var/colour = href_list["attach"]
				// Detach
				if(IsAttached(colour))
					var/obj/item/O = Detach(colour)
					if(O)
						L.put_in_hands(O)
						to_chat(usr, SPAN_NOTICE("You detach the signaller from the [colour] wire."))

				// Attach
				else
					if(istype(I, /obj/item/device/assembly/signaler))
						if(L.unEquip(I))
							Attach(colour, I)
							to_chat(usr, SPAN_NOTICE("You attach the signaller to the [colour] wire."))
					else
						to_chat(L, SPAN_CLASS("error", "You need a remote signaller!"))



		// Update Window
			Interact(usr)

	if(href_list["close"])
		close_browser(usr, "window=wires")
		usr.unset_machine(holder)

//
// Overridable Procs
//

/// Called when wires cut/mended.
/datum/wires/proc/UpdateCut(index, mended)
	return

/// Called when wire pulsed. Add code here.
/datum/wires/proc/UpdatePulsed(index)
	return

/// Intended to be called when a pulsed wire 'resets'. You'll have to call this yourself in an `addtimer()` call in `UpdatePulsed()`.
/datum/wires/proc/ResetPulsed(index)
	return


/datum/wires/proc/CanUse(mob/living/L)
	return 1

// Example of use:
/*

var/global/const/BOLTED= 1
var/global/const/SHOCKED = 2
var/global/const/SAFETY = 4
var/global/const/POWER = 8

/datum/wires/door/UpdateCut(index, mended)
	var/obj/machinery/door/airlock/A = holder
	switch(index)
		if(BOLTED)
		if(!mended)
			A.bolt()
	if(SHOCKED)
		A.shock()
	if(SAFETY )
		A.safety()

*/


//
// Helper Procs
//

/datum/wires/proc/PulseColour(colour)
	PulseIndex(GetIndex(colour))

/datum/wires/proc/PulseIndex(index)
	if(IsIndexCut(index))
		return
	UpdatePulsed(index)

/datum/wires/proc/GetIndex(colour)
	if(wires[colour])
		var/index = wires[colour]
		return index
	else
		CRASH("[colour] is not a key in wires.")


/datum/wires/proc/RandomPulse()
	var/index = rand(1, length(wires))
	PulseColour(wires[index])

//
// Is Index/Colour Cut procs
//

/datum/wires/proc/IsColourCut(colour)
	var/index = GetIndex(colour)
	return IsIndexCut(index)

/datum/wires/proc/IsIndexCut(index)
	return (index & wires_status)

//
// Signaller Procs
//

/datum/wires/proc/IsAttached(colour)
	if(signallers[colour])
		return 1
	return 0

/datum/wires/proc/GetAttached(colour)
	if(signallers[colour])
		return signallers[colour]
	return null

/datum/wires/proc/Attach(colour, obj/item/device/assembly/signaler/S)
	if(colour && S)
		if(!IsAttached(colour))
			signallers[colour] = S
			S.forceMove(holder)
			S.connected = src
			return S

/datum/wires/proc/Detach(colour)
	if(colour)
		var/obj/item/device/assembly/signaler/S = GetAttached(colour)
		if(S)
			signallers -= colour
			S.connected = null
			S.dropInto(holder.loc)
			return S


/datum/wires/proc/Pulse(obj/item/device/assembly/signaler/S)

	for(var/colour in signallers)
		if(S == signallers[colour])
			PulseColour(colour)
			break

//
// Cut Wire Colour/Index procs
//

/datum/wires/proc/CutWireColour(colour)
	var/index = GetIndex(colour)
	return CutWireIndex(index)

/datum/wires/proc/CutWireIndex(index)
	if(IsIndexCut(index))
		wires_status &= ~index
		UpdateCut(index, 1)
		return 1
	else
		wires_status |= index
		UpdateCut(index, 0)
		return 0

/datum/wires/proc/RandomCut()
	var/r = rand(1, length(wires))
	CutWireColour(wires[r])

/datum/wires/proc/RandomCutAll(probability = 10)
	for(var/i = 1; i < MAX_FLAG && i < SHIFTL(1, wire_count); i += i)
		if(prob(probability))
			CutWireIndex(i)

/datum/wires/proc/CutAll()
	for(var/i = 1; i < MAX_FLAG && i < SHIFTL(1, wire_count); i += i)
		CutWireIndex(i)

/datum/wires/proc/IsAllCut()
	if(wires_status == SHIFTL(1, wire_count) - 1)
		return 1
	return 0

/datum/wires/proc/MendAll()
	for(var/i = 1; i < MAX_FLAG && i < SHIFTL(1, wire_count); i += i)
		if(IsIndexCut(i))
			CutWireIndex(i)

//
//Shuffle and Mend
//

/datum/wires/proc/Shuffle()
	wires_status = 0
	GenerateWires()


/// Update the wire at wire_flag according to cut, flipping if null.
/datum/wires/proc/UpdateWire(wire_flag, cut)
	var/state = HAS_FLAGS(wires_status, wire_flag)
	if (isnull(cut))
		FLIP_FLAGS(wires_status, wire_flag)
	else if (cut)
		SET_FLAGS(wires_status, wire_flag)
	else
		CLEAR_FLAGS(wires_status, wire_flag)
	if (HAS_FLAGS(wires_status, wire_flag) != state)
		UpdateCut(wire_flag, !state)
