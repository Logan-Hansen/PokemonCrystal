	object_const_def
	const GOLDENRODDEPTSTORE3F_CLERK
	const GOLDENRODDEPTSTORE3F_CLERK2
	const GOLDENRODDEPTSTORE3F_SUPER_NERD
	const GOLDENRODDEPTSTORE3F_ROCKER

GoldenrodDeptStore3F_MapScripts:
	def_scene_scripts

	def_callbacks

GoldenrodDeptStore3FClerkScript:
	faceplayer
	opentext
	pokemart MARTTYPE_STANDARD, MART_GOLDENROD_3F
	closetext
	end

GoldenrodDeptStore3FClerk2Script:
	faceplayer
	opentext
	pokemart MARTTYPE_STANDARD, MART_GOLDENROD_3F_2
	closetext
	end

GoldenrodDeptStore3FSuperNerdScript:
	jumptextfaceplayer GoldenrodDeptStore3FSuperNerdText

GoldenrodDeptStore3FRockerScript:
	jumptextfaceplayer GoldenrodDeptStore3FRockerText

GoldenrodDeptStore3FDirectory:
	jumptext GoldenrodDeptStore3FDirectoryText

GoldenrodDeptStore3FElevatorButton:
	jumpstd ElevatorButtonScript

GoldenrodDeptStore3FSuperNerdText:
	text "I, I, I'm not"
	line "sure what to do!"

	para "Should I evolve"
	line "my #MON now to"
	cont "make it strong?"

	para "Or do I wait"
	line "until it has"
	cont "more moves?"

	done

GoldenrodDeptStore3FRockerText:
	text "I heard they get"
	line "the stones from"
	cont "CELADON CITY."

	para "Apparently they"
	line "have even more"
	cont "options there."
	done

GoldenrodDeptStore3FDirectoryText:
	text "For Victory"
	line "Seekers"

	para "3F EVOLUTION"
	line "   COLLECTION"
	done

GoldenrodDeptStore3F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 12,  0, GOLDENROD_DEPT_STORE_2F, 1
	warp_event 15,  0, GOLDENROD_DEPT_STORE_4F, 2
	warp_event  2,  0, GOLDENROD_DEPT_STORE_ELEVATOR, 1

	def_coord_events

	def_bg_events
	bg_event 14,  0, BGEVENT_READ, GoldenrodDeptStore3FDirectory
	bg_event  3,  0, BGEVENT_READ, GoldenrodDeptStore3FElevatorButton

	def_object_events
	object_event  6,  1, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStore3FClerkScript, -1
	object_event  7,  1, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStore3FClerk2Script, -1
	object_event 12,  5, SPRITE_SUPER_NERD, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStore3FSuperNerdScript, -1
	object_event  2,  5, SPRITE_ROCKER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStore3FRockerScript, -1
