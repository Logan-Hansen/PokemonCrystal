	object_const_def
	const OLIVINETIMSHOUSE_TIM

OlivineTimsHouse_MapScripts:
	def_scene_scripts

	def_callbacks

Tim:
	faceplayer
	;opentext
	;trade NPC_TRADE_TIM
	;waitbutton
	;closetext
	;end
	checkevent EVENT_GOT_A_CHINCHOU_FROM_TIM
	iftrue .AskHowPokemon
	opentext
	writetext TimGivePokemonText
	yesorno
	iffalse .RefusedPokemon
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .PartyFull
	givepoke CHINCHOU, 20, METAL_COAT
	setevent EVENT_GOT_A_CHINCHOU_FROM_TIM
	writetext VioletKyleGaveOnixText
	waitbutton
	closetext
	end

.AskHowPokemon: ;added
	opentext
	writetext TimHowDoingText
	waitbutton
	closetext
	end

.RefusedPokemon: ;added
	writetext TimRefusedText
	waitbutton
	closetext
	end

.PartyFull: ;added
	writetext TimFullPartyText
	waitbutton
	closetext
	end


TimGivePokemonText: ;added
	text "I train CHINCHOU,"
	line "but I don't get"
	cont "out much anymore."
	
	para "If you don't mind,"
	line "could you raise it"
	cont "for me?"
	done

TimHowDoingText: ;added
	text "How is CHINCHOU?"
	
	para "Thanks again for"
	line "raising it!"
	done

TimRefusedText: ;added
	text "Oh..."

	para "Well, let me know"
	line "if you change"
	cont "your mind..."

TimFullPartyText: ;added
	text "Oh, no. You can't"
	line "carry any more"
	cont "#MON with you."

	para "I will be here"
	line "if you ever want"
	cont "CHINCHOU."
	done

TimGavePokemonText: ;added
	para "I am glad you're"
	line "going to raise"
	cont "it now. Thanks!"
	done	

TimsHouseBookshelf:
	jumpstd MagazineBookshelfScript

OlivineTimsHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, OLIVINE_CITY, 3
	warp_event  3,  7, OLIVINE_CITY, 3

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, TimsHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, TimsHouseBookshelf

	def_object_events
	object_event  2,  3, SPRITE_FISHING_GURU, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Tim, -1
