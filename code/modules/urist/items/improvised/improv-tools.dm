// Improvised Tools - For certain crafty fellows - S
// Stowaways, Halper Prisoners, and Traitors.


// Primary Tools

// Screwdrivers.

// ok so let's go through this, we need a couple different ways to screw open a panel in ss13 logic.  coin driver, file-driver (need metal - lasts longer),


/obj/item/weapon/screwdriver/makeshift/filedriver
	name "makeshift file-driver"
	desc = "A crudely made piece of metal shaped roughly in the shape of a screwdriver, it looks fairly strong."
	icon = ''
	icon_state = ''

/obj/item/weapon/screwdriver/makeshift/coindriver
	name = "coin-driver"
	desc = "A small bit of wire wrapped around a coin for extra grip, this looks pretty flimsy, but could open a panel in a pinch."
	icon = ''
	icon_state = ''

/obj/item/weapon/screwdriver/makeshift/pendriver
	name = "Pen-driver"
	desc = "A piece of molded plastic, shaped in the style of a modern screwhead."
	icon = ''
	icon_state = ''

// Welders

/obj/item/weapon/weldingtool/makeshift
	name = "makeshift welder"
	desc = "A makeshift welder, hobbled together from a few electronic parts, it doesn't look like it holds much charge, but you could probably do some light repair work with this."
	icon = ''
	icon_state = ''

// Wrenches
/obj/item/weapon/wrench/makeshift/ducttape
	name = "makeshift duct wrench"
	desc = "A makeshift wrench, made of duct-tape, that will fit across a bolt and turn it. This is pretty flimsy."
	icon = ''
	icon_state = ''

/obj/item/weapon/wrench/makeshift/scrapwrench
	name = "crude metal wrench"
	desc = "A very crude wrench, made of bashed together metal and held together with wiring. It looks fairly strong."
	icon = ''
	icon_state = ''

// Wirecutters

/obj/item/weapon/wirecutter/makeshift
	name = "crude wirecutters"
	desc = "A very crude pair of wirecutters, hobbled together from two sharp implements, you could use this for cutting wires."
	icon = ''
	icon_state = ''

// Crowbars

/obj/item/weapon/crowbar/makeshift
	name = "crude prybar"
	desc = "A rough piece of metal bashed into the shape of a prybar, you could use this to pry open or dismantle various objects. It looks vaguely strong."
	icon = ''
	icon_state = ''

// Item "Tools"

/obj/item/weapon/reagent_containers/food/drinks/crudecanteen
	name = "crude water canteen"
	desc = "A water vessel tied together with some cable coil to fit easily inside of a belt."
	icon = ''
	icon_state = ''

/obj/item/weapon/reagent_containers/food/drinks/waterskin
	name = "waterskin"
	desc = "A water vessel made out of leather with a removable cap for easy drinking."
	icon = ''
	icon_state = ''

// Item "Trap Ingredients"

/obj/item/weapon/tripwirehook
	name = "tripwire hook"
	desc = "Part of a tripwire system for passively triggering some sort of alert or payload."
	icon = ''
	icon_state = ''

/obj/item/weapon/caltrops
	name = "caltrops"
	desc = "Small sharp metal spikes, commonly used for cavalary, now used for man. Won't cause much of an injury, but certain to slow people down."
	icon = ''
	icon_state = ''


/* TODO:

Caltrop Balancing + Recipes, System for dropping/placing.
Durability System for Tools - Need to either make a new subclass, or add this to normal tools as well, and set them to 0 - So they never break.
Balance Durability over how difficult it is to make them, some things of Stations and Ships are very hard to find.
Spriting, as always!
*/