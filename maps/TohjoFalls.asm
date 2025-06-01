	object_const_def
	const TOHJOFALLS_POKE_BALL
	const TOHJOFALL_GIOVANNI

TohjoFalls_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, TohjoFallsGiovanniCallback

TohjoFallsGiovanniCallback:
	checkevent EVENT_BEAT_GIOVANNI_TOHJO
	iftrue .NoAppear
	iffalse .CheckCelebi
	sjump .NoAppear
	
.CheckCelebi:
	setval CELEBI
	special FindPartyMonThatSpecies
	iftrue .Appear
	sjump .NoAppear

.Appear:
	pause 10
	cry CELEBI
	special FadeOutToBlack
	appear TOHJOFALL_GIOVANNI
	pause 15
	special FadeInFromBlack
	opentext
	writetext CelebiTimeText
	waitbutton
	closetext
	endcallback

.NoAppear:
	disappear TOHJOFALL_GIOVANNI
	endcallback

GiovanniScript:
	faceplayer
	opentext
	writetext GiovanniBeforeText1
	waitbutton
	closetext
	playmusic MUSIC_ROCKET_ENCOUNTER
	opentext
	writetext RadioText 
	waitbutton
	closetext
	showemote EMOTE_SHOCK, PLAYER, 10
	opentext
	writetext GiovanniBeforeText2
	waitbutton
	closetext
	winlosstext GiovanniWinText, GiovanniLossText
	setlasttalked TOHJOFALL_GIOVANNI
	loadtrainer GIOVANNI, GIOVANNI
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .AfterBattle

.AfterBattle:
    playmusic MUSIC_ROCKET_ENCOUNTER
	opentext
	writetext GiovanniAfterText
	waitbutton
	closetext
	turnobject TOHJOFALL_GIOVANNI, RIGHT
	pause 20
	opentext
	writetext GiovanniPromiseText
	waitbutton
	closetext
	turnobject TOHJOFALL_GIOVANNI, DOWN
	
	special FadeOutToBlack
	disappear TOHJOFALL_GIOVANNI
	pause 10
	playsound SFX_EXIT_BUILDING
	special FadeInFromBlack
	setevent EVENT_BEAT_GIOVANNI_TOHJO
	waitsfx
	playmapmusic
	end


TohjoFallsMoonStone:
	itemball MOON_STONE

GiovanniBeforeText1:
	text "???:"
	line "Who are you?"

	para "<PLAY_G>?"
	line "You remind me"
	cont "of someone..."

	para "No matter."
	line "Have you heard"
	cont "the radio today?"
	done

RadioText:
	text "… …Ahem, we are"
	line "TEAM ROCKET!"

	para "After three years"
	line "of preparation, we"
	cont "have risen again"
	cont "from the ashes!"
	
	para "GIOVANNI!"
	line "Can you hear?"
	cont " We did it!"

	para "Where is our boss?"
	done

GiovanniBeforeText2:
	text "I'm on the way"
	line "to GOLDENROD to"
	cont "answer the call."

	para "After years of"
	line "training and"
	cont "preparation..."

	para "I will rejoin"
	line "TEAM ROCKET."
	
	para "Nothing will"
	line "get in my way!"
	done


GiovanniWinText:
	text "..."
	line "You really are"
	cont "just like him."
	done

GiovanniLossText:
	text "TEAM ROCKET"
	line "will return!"
	done

GiovanniAfterText:
	text "How is this"
	line "possible?"

	para "Have the past few"
	line "years been nothing"
	cont "but a waste?"

	para "How can a child"
	line "manage to destroy"
	cont "my dream again?"
	done	


GiovanniPromiseText:
	text "The precious dream"
	line "of TEAM ROCKET is"
	cont "little more than"
	cont "an illusion..."

	para "I give my word"
	line "that I will not"
	cont "rejoin."

	para "TEAM ROCKET will"
	line "not succeed this"
	cont "way..."
	done

CelebiTimeText:
	text "It seems Celebi"
	line "has brought you"
	cont "back in time."

	para "It's acting"
	line "very serious."

	para "Perhaps there"
	line "is something"
	cont "you must do?"
	done

TohjoFalls_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 13, 15, ROUTE_27, 2
	warp_event 25, 15, ROUTE_27, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TohjoFallsMoonStone, EVENT_TOHJO_FALLS_MOON_STONE
	object_event 3,  7, SPRITE_GIOVANNI, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, GiovanniScript, EVENT_GIOVANNI_TOHJO