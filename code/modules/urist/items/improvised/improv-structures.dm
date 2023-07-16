// Improvised Structures go here - S FOR NOW!!!!!!!!

// Furniture

/obj/structure/improvised/leanto
	name = "Lean-To"
	desc = "A comfy looking lean-to, likely found in a dark corner of maintenance."
	icon_state = "test"
	icon = 'icons/urist/test.dmi'

/obj/structure/bed/strawbedroll
	name = "straw bedroll"
	desc = "A crudely made bedroll made of straw, it's itchy."
	icon_state = "test"
	icon = 'icons/urist/test.dmi'


/obj/structure/bed/leatherbedroll
	name = "leather bedroll"
	desc = "A crudely made bedroll made of leather."
	icon_state = "test"
	icon = 'icons/urist/test.dmi'


// Traps

// Tripwires

/obj/effect/tripwire
	name = "Tripwire"
	desc = "A tripwire needing to be set."
	icon_state = "test"
	icon = 'icons/urist/test.dmi'
	anchored = 0
	var/armed = 0
	var/loaded = "explode" // If loaded, call this proc to make the boom go boom boom.

	// Pseudo - You add another hook to the tripwire...   You add a wire arming the tripwire!  You remove any safety elements of ___ and attach the anchor wire to the ___

/*
name = "Tripwire - (SET)"
desc = "A tripwire set and ready to activate!"
*/

//
/* TODO:

Tripwire Grenade Blacklist - For Balancing
Balancing visibility
Making tripwires actually work.
Tripwires + Chemistry? (Probably very OP, but fun.)
Spriting.

*/