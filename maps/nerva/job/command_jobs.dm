/datum/job/captain
	title = "Captain"
	supervisors = "yourself, as you are the owner of this ship and the sole arbiter of its destiny. However, be careful not to anger NanoTrasen and the other factions that have set up outposts in this sector, or your own staff for that matter. It could lead to your undoing"
	department = "Command"
	department_flag = COM
	total_positions = 1
	spawn_positions = 1
	selection_color = "#004a7f"
	req_admin_notify = 1
	minimal_player_age = 14
	economic_power = 3
	outfit_type = /singleton/hierarchy/outfit/job/nerva/captain
	email_domain = "icsnerva.cheapdomainsbuynow.net"
	software_on_spawn = list(/datum/computer_file/program/comm,
							 /datum/computer_file/program/card_mod,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/reports)

/datum/job/captain/get_description_blurb()
	return "You are the Captain and owner of the ICS Nerva. You are the top dog. Your backstory and destiny is your own to decide, however, you are ultimately responsible for all that happens onboard. Your job is to make sure the that Nerva survives its time in this sector, and turns a profit for you. Delegate to your First Officer, the Second Officer, and your department heads to effectively manage the ship, and listen to and trust their expertise. It might be the difference between life and death. Oh, and watch out for pirates. The ICS Nerva only has a small complement of weapons at first, which can be upgraded either by your supply team, or by purchasing/salvaging additional weaponry. Good luck."

/datum/job/firstofficer
	title = "First Officer"
	supervisors = "the Captain"
	department = "Command"
	department_flag = COM
	total_positions = 1
	spawn_positions = 1
	selection_color = "#004a7f"
	req_admin_notify = 1
	minimal_player_age = 7
	economic_power = 15
	outfit_type = /singleton/hierarchy/outfit/job/nerva/firstofficer
	hud_icon = "hudfirstofficer"
	access = list(access_security, access_sec_doors, access_brig, access_forensics_lockers, access_heads,
			            access_engine, access_change_ids, access_ai_upload, access_eva, access_bridge,
			            access_all_personal_lockers, access_maint_tunnels, access_janitor, access_construction, access_morgue,
			            access_crematorium, access_kitchen, access_cargo, access_cargo_bot, access_mailsorting, access_qm, access_hydroponics, access_lawyer,
			            access_chapel_office, access_library, access_research, access_mining, access_heads_vault, access_mining_station,
			            access_hop, access_RC_announce, access_keycard_auth, access_gateway,
			            access_expedition_shuttle_helm, access_expedition, access_fo, access_teleporter,
			            access_tcomsat, access_engine_equip, access_tech_storage, access_ce, access_external_airlocks, access_atmospherics, access_emergency_storage, access_construction,
			            access_medical, access_medical_equip, access_morgue,
						access_chemistry, access_virology, access_cmo, access_surgery,
						access_robotics, access_research, access_armory, access_hos,
						access_tox, access_tox_storage, access_xenobiology, access_xenoarch, access_psychiatrist, access_gunnery, access_prim_tool
						)
/*	software_on_spawn = list(/datum/computer_file/program/comm,
							 /datum/computer_file/program/card_mod,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/reports)*/

/datum/job/firstofficer/get_description_blurb()
	return "You are the First Officer, and second in command of the ICS Nerva. As the clear second in command of the ship, your job is to work with the captain to run the ship, and take charge of navigation according to the captain's orders. You are also in charge of organizing and executing away missions, in coordination with the Quartermaster. If there is no second officer, your job is also to oversee personnel issues. In the event of combat, your job is to work with the Chief of Security to coordinate the ship's defence."

/datum/job/hop
	title = "Second Officer"
	supervisors = "the captain and the first officer"
	department = "Civilian"
	department_flag = COM
	total_positions = 1
	spawn_positions = 1
	selection_color = "#004a7f"
	req_admin_notify = 1
	minimal_player_age = 5
	//economic_power
	outfit_type = /singleton/hierarchy/outfit/job/nerva/secondofficer
	hud_icon = "hudsecondofficer"
	access = list(access_security, access_sec_doors, access_brig, access_forensics_lockers, access_heads,
			            access_medical, access_engine, access_change_ids, access_ai_upload, access_eva, access_bridge,
			            access_all_personal_lockers, access_maint_tunnels, access_janitor, access_construction, access_morgue,
			            access_crematorium, access_cargo, access_hydroponics, access_lawyer, access_kitchen,
			            access_chapel_office, access_library, access_research, access_heads_vault,
			            access_hop, access_RC_announce, access_keycard_auth, access_gateway, access_teleporter,
			            access_expedition_shuttle_helm, access_expedition, access_gunnery, access_prim_tool)
/*	software_on_spawn = list(/datum/computer_file/program/comm,
							 /datum/computer_file/program/card_mod,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/reports)*/

/datum/job/hop/get_description_blurb()
	return "You are the Second Officer, third in command, after the First Officer and the Captain. As the Second Officer, it is your job to oversee personnel issues, which includes managing ID cards and access, delegating crew grievances, and ensuring the proper upkeep and operation of the ship's recreational and mess facilities. Thus, you are the direct supervisor for the janitorial staff, as well as the culinary and hydroponics staff. As Second Officer, in cases where there is no First Officer present, it is also your job to pilot the ICS Nerva, and organize away missions in coordination with the Quartermaster."

/datum/job/seniorscientist
	title = "Senior Scientist"
	supervisors = "NanoTrasen Central Command and the captain"
	department = "Science"
	department_flag = SCI|COM
	total_positions = 1
	spawn_positions = 1
	selection_color = "#ad6bad"
	req_admin_notify = 1
	minimal_player_age = 3
	economic_power = 15
	outfit_type = /singleton/hierarchy/outfit/job/nerva/seniorscientist
	hud_icon = "hudseniorscientist"
	email_domain = "externalresearch.nt"
	allow_custom_email = FALSE
	access = list(access_tox, access_tox_storage, access_research, access_xenobiology, access_xenoarch, access_expedition, access_network, access_seniornt,
			 					access_maint_tunnels, access_heads, access_medical, access_ai_upload, access_eva, access_bridge, access_morgue, access_hydroponics,
								access_library, access_research, access_heads_vault, access_RC_announce, access_gateway, access_expedition_shuttle_helm, access_expedition, access_teleporter, access_prim_tool)
/*	software_on_spawn = list(/datum/computer_file/program/comm,
							 /datum/computer_file/program/card_mod,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/reports)*/

/datum/job/seniorscientist/get_description_blurb()
	return "You are a well-respected Senior Scientist working for NanoTrasen aboard the ICS Nerva. The captain has leased space to NanoTrasen for research purposes, in exchange for a nice payout and access to NanoTrasen research contracts. It is your job to manage your science team to ensure that NanoTrasen's research advances. Thus, you answer to NanoTrasen Central Command, which you can fax directly, and not the captain of the ship. However, you are expected to respect the wishes of the captain or ranking officer with regards to the ship as a whole, and to follow their instructions during emergency situations."

/datum/job/cmo
	title = "Chief Medical Officer"
	supervisors = "the captain and the first officer"
	department = "Medical"
	department_flag = MED|COM
	total_positions = 1
	spawn_positions = 1
	minimal_player_age = 1
	outfit_type = /singleton/hierarchy/outfit/job/nerva/seniorscientist // change this
	access = list(access_medical, access_medical_equip, access_morgue, access_bridge, access_heads,
			access_chemistry, access_virology, access_cmo, access_surgery, access_RC_announce,
			access_keycard_auth, access_sec_doors, access_psychiatrist, access_eva, access_maint_tunnels, access_external_airlocks,
			access_expedition_shuttle_helm, access_expedition, access_gunnery, access_prim_tool)
/*	software_on_spawn = list(/datum/computer_file/program/comm,
							 /datum/computer_file/program/card_mod,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/reports)*/

/datum/job/cmo/get_description_blurb()
	return	"You are the Chief Medical Officer onboard the ICS Nerva. As Chief Medical Officer, it is your job to oversee your medical staff and ensure they successfully treat all injured crew, provide surgery for injured crew, produce and mandate chemicals used for medicine and ensure all deceased crew are properly taken care of, and cloned if possible. Thus, you are the direct supervisor for medical staff, and may be held responsible for their malpractice. As Chief Medical Officer, it is also your job to delegate the medical team to respond to injured crew in specific areas, send medical doctors to away missions to provide medical care and to cure any biological contaminant that may come onboard. You answer directly to the Captain and the First Officer."

/datum/job/chief_engineer
	title = "Chief Engineer"
	supervisors = "the captain and the first officer"
	department = "Engineering"
	department_flag = ENG|COM
	minimal_player_age = 3
	access = list(access_engine, access_engine_equip, access_tech_storage, access_maint_tunnels, access_heads,
			            access_teleporter, access_external_airlocks, access_atmospherics, access_emergency_storage, access_eva,
			            access_bridge, access_construction, access_sec_doors,
			            access_ce, access_RC_announce, access_keycard_auth, access_tcomsat, access_ai_upload,
			            access_expedition_shuttle_helm, access_expedition, access_gunnery, access_prim_tool)

/datum/job/chief_engineer/get_description_blurb()
	return	"You are the Chief Engineer, as the Chief Engineer, it is your job to oversee the Engineering Staff to ensure that all elements of engineering are being performed safely. This includes overseeing the supermatter's power generation, ensuring all atmospheric flow through the air is not contaminated, stopping and preventing fires and forwarding engineer supply requests to the Cargo Team. Thus, you are a direct supervivor for the Engineering Staff, ensure that all of your staff are well-organized and know what tasks to work on, as you may be held responsible for catastrophic damage from engine-failure and gas leaks. You answer directly to the Captain and the First Officer, remember that in the event of a Supermatter explosion, you can eject the crystal to space and that your suit is completely fire proof to assist in stopping fires."
/*	software_on_spawn = list(/datum/computer_file/program/comm,
							 /datum/computer_file/program/card_mod,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/reports)*/

/datum/job/hos
	title = "Chief of Security"
	supervisors = "the captain and the first officer"
	department = "Security"
	department_flag = SEC|COM
	minimal_player_age = 5
	outfit_type = /singleton/hierarchy/outfit/job/security/nervacos // adjust
	hud_icon = "hudheadofsecurity"
	access = list(access_security, access_eva, access_sec_doors, access_brig, access_armory, access_heads,
			            access_forensics_lockers, access_morgue, access_maint_tunnels, access_all_personal_lockers,
			            access_research, access_engine, access_mining, access_medical, access_construction, access_mailsorting,
			            access_bridge, access_hos, access_RC_announce, access_keycard_auth, access_gateway, access_external_airlocks,
			            access_expedition_shuttle_helm, access_expedition, access_gunnery, access_prim_tool)
/*	software_on_spawn = list(/datum/computer_file/program/comm,
							 /datum/computer_file/program/card_mod,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/reports)*/

/datum/job/hos/get_description_blurb()
	return	"You are the Chief of Security, as the Chief of Security, it is your job to oversee your Security team to ensure they follow the correct procedures when responding to arrests and threats, managing and overseeing brigging, ensuring all crew present are on the manifest. You are held accountable for the Security Team's actions. As the Chief of Security, it is also your job to arrest criminals, assist officers in distress, organize and speak with Command Staff about away-teams and out-bound communications and in cases in which there are no command staff present, act as Acting Captain. You answer directly to the Captain and the First Officer, remember to follow the specified law guidelines and avoid putting yourself in danger when you are on your own."

/datum/job/qm
	title = "Quartermaster"
	supervisors = "the captain and the first officer"
	department = "Supply"
	department_flag = COM|SUP
	minimal_player_age = 1
	total_positions = 1
	spawn_positions = 1
	economic_power = 9
	head_position = 1
	outfit_type = /singleton/hierarchy/outfit/job/nerva/qm
	access = list(access_maint_tunnels, access_mailsorting, access_cargo, access_cargo_bot, access_qm, access_mining, access_mining_station,
	access_expedition_shuttle_helm, access_expedition, access_robotics, access_research, access_teleporter,
	access_RC_announce, access_keycard_auth, access_heads, access_eva, access_bridge, access_hydroponics, access_gunnery, access_expedition, access_prim_tool)
/*	software_on_spawn = list(/datum/computer_file/program/comm,
							 /datum/computer_file/program/card_mod,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/reports)*/

/datum/job/qm/get_description_blurb()
	return	"You are the Quartermaster. As the Quartermaster, it is your job to oversee and delegate your Supply Staff, which may include managing research & development, exporting and importing goods, sending teams to away missions, salvaging and mining, and arming the ICS Nerva if attacks occur. As Quartermaster, it is also your job to organize away missions with the First Officer and prevent the supply crew from manufacturing dangerous arms without direct permission."

/datum/job/blueshield
	title = "Bodyguard"
	department_flag = SEC|COM
	department = "Command"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the captain, who hired you to protect them. If the captain is not present, follow the chain of command as to who you will be protecting"
	selection_color = "#004a7f"
	req_admin_notify = 1
	minimal_player_age = 3
	economic_power = 7
	outfit_type = /singleton/hierarchy/outfit/job/bodyguard
	hud_icon = "hudbodyguard"
	access = list(access_security, access_sec_doors, access_court, access_forensics_lockers,
			            access_medical, access_engine, access_ai_upload, access_eva, access_heads, access_bridge,
			            access_all_personal_lockers, access_maint_tunnels, access_construction, access_morgue,
			            access_cargo, access_mailsorting, access_qm, access_lawyer,
			            access_theatre, access_research, access_mining, access_mining_station,
			            access_clown, access_mime, access_RC_announce, access_keycard_auth, access_blueshield, access_teleporter, access_gunnery, access_prim_tool
			            )
/*	software_on_spawn = list(/datum/computer_file/program/comm,
							 /datum/computer_file/program/card_mod,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/reports)*/
