	object_const_def
	const POKEMONMANSION_MEWTWO

PokemonMansion_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, PokemonMansionMewtwoCallback

PokemonMansionMewtwoCallback:
	checkevent EVENT_FOUGHT_MEWTWO
	iftrue .NoAppear
	iffalse .CheckBadges
	sjump .NoAppear

.CheckBadges:
	readvar VAR_BADGES
	ifequal 16, .Appear
	sjump .NoAppear

.Appear:
	appear POKEMONMANSION_MEWTWO
	endcallback

.NoAppear:
	disappear POKEMONMANSION_MEWTWO
	endcallback

Mewtwo:
	faceplayer
	opentext
	writetext MewtwoText
	cry MEWTWO
	pause 15
	closetext
	setevent EVENT_FOUGHT_MEWTWO
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	loadwildmon MEWTWO, 60
	startbattle
	disappear POKEMONMANSION_MEWTWO
	reloadmapafterbattle
	end

MewtwoText:
	text "Mew!"
	done


PokemonMansion_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9, 15, CINNABAR_ISLAND, 2
	warp_event 10, 15, CINNABAR_ISLAND, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event 10,  1, SPRITE_MEWTWO, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Mewtwo, EVENT_POKEMON_MANSION_MEWTWO
