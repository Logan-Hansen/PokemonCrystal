	object_const_def
	

ViridianForest_MapScripts:
	def_scene_scripts

	def_callbacks


PewterSideSign:
    jumptext PewterSideSignText

ViridianSideSign:
	jumptext ViridianSideSignText

ViridianSideSignText:
	text "VIRIDIAN FOREST"

	para "HEAD NORTH TO"
	line "PEWTER CITY"
	done

PewterSideSignText:
	text "VIRIDIAN FOREST"

	para "HEAD SOUTH TO"
	line "VIRIDIAN CITY"
	done


ViridianForest_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  0, ROUTE_2, 6
	warp_event 21, 35, ROUTE_2, 7

	def_coord_events

	def_bg_events
	bg_event 21, 31, BGEVENT_READ, ViridianSideSign
	bg_event  3,  7, BGEVENT_READ, PewterSideSign


	def_object_events
