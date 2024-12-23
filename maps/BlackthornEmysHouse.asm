	object_const_def
	const BLACKTHORNEMYSHOUSE_EMY

BlackthornEmysHouse_MapScripts:
	def_scene_scripts

	def_callbacks

Emy:
	faceplayer
	;opentext
	;trade NPC_TRADE_EMY
	;waitbutton
	;closetext
	;end
	checkevent EVENT_GOT_A_XATU_FROM_EMY
	iftrue .AskHowPokemon
	opentext
	writetext EmyGivePokemonText
	yesorno
	iffalse .RefusedPokemon
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .PartyFull
	givepoke XATU, 35, MYSTERYBERRY
	setevent EVENT_GOT_A_XATU_FROM_EMY
	writetext EmyGavePokemonText
	waitbutton
	closetext
	end

.AskHowPokemon: ;added
	opentext
	writetext EmyHowDoingText
	waitbutton
	closetext
	end

.RefusedPokemon: ;added
	writetext EmyRefusedText
	waitbutton
	closetext
	end

.PartyFull: ;added
	writetext EmyFullPartyText
	waitbutton
	closetext
	end


EmyGivePokemonText: ;added
	text "My ex left me"
	line "this XATU, but I"
	cont "don't want it..."
	
	para "If you don't mind,"
	line "could you raise it"
	cont "for me?"
	done

EmyHowDoingText: ;added
	text "How is XATU?"
	
	para "Thanks again for"
	line "raising it!"
	done

EmyRefusedText: ;added
	text "Oh..."

	para "Well, let me know"
	line "if you change"
	cont "your mind..."

EmyFullPartyText: ;added
	text "Oh, no. You can't"
	line "carry any more"
	cont "#MON with you."

	para "I will be here"
	line "if you ever want"
	cont "XATU."
	done

EmyGavePokemonText: ;added
	para "I am glad you're"
	line "going to raise"
	cont "it now. Thanks!"
	done

EmysHouseBookshelf:
	jumpstd MagazineBookshelfScript

BlackthornEmysHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, BLACKTHORN_CITY, 3
	warp_event  3,  7, BLACKTHORN_CITY, 3

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, EmysHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, EmysHouseBookshelf

	def_object_events
	object_event  2,  3, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Emy, -1
