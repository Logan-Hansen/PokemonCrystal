	object_const_def
	const SEAFOAM_ISLANDS_ARTICUNO

SeafoamIslands_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, SeafoamIslandsArticunoCallback

SeafoamIslandsArticunoCallback:
	checkevent EVENT_FOUGHT_ARTICUNO
	iftrue .NoAppear
	iffalse .Appear
	sjump .NoAppear

.Appear:
	appear SEAFOAM_ISLANDS_ARTICUNO
	endcallback

.NoAppear:
	disappear SEAFOAM_ISLANDS_ARTICUNO
	endcallback

Articuno:
	faceplayer
	opentext
	writetext ArticunoText
	cry ARTICUNO 
	pause 15
	closetext
	setevent EVENT_FOUGHT_ARTICUNO
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	loadwildmon ARTICUNO, 60
	startbattle
	disappear SEAFOAM_ISLANDS_ARTICUNO
	reloadmapafterbattle
	end

ArticunoText:
	text "Gyaoo!"
	done

SeafoamIslands_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 34, 33, ROUTE_20, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event 11,  6, SPRITE_ARTICUNO, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Articuno, EVENT_SEAFOAM_ISLANDS_ARTICUNO
