	object_const_def
	const VIOLETKYLESHOUSE_POKEFAN_M
	const VIOLETKYLESHOUSE_KYLE

VioletKylesHouse_MapScripts:
	def_scene_scripts

	def_callbacks

VioletKylesHousePokefanMScript:
	jumptextfaceplayer VioletKylesHousePokefanMText

Kyle:
	faceplayer
	;opentext
	;trade NPC_TRADE_KYLE
	;waitbutton
	;closetext
	;end
	checkevent EVENT_GOT_A_ONIX_FROM_KYLE
	iftrue .AskHowOnix
	opentext
	writetext VioletKyleGiveOnixText
	yesorno
	iffalse .RefusedOnix
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .PartyFull
	givepoke ONIX, 6, BITTER_BERRY
	setevent EVENT_GOT_A_ONIX_FROM_KYLE
	writetext VioletKyleGaveOnixText
	waitbutton
	closetext
	end

.AskHowOnix: ;added
	opentext
	writetext VioletKyleHowDoingText
	waitbutton
	closetext
	end

.RefusedOnix: ;added
	writetext VioletKyleRefusedText
	waitbutton
	closetext
	end

.PartyFull: ;added
	writetext VioletKyleFullPartyText
	waitbutton
	closetext
	end


VioletKyleGiveOnixText: ;added
	text "I got an ONIX,"
	line "but am having"
	cont "trouble with it."
	
	para "If you don't mind,"
	line "could you raise it"
	cont "for me?"
	done

VioletKyleHowDoingText: ;added
	text "How is ONIX doing?"
	
	para "Thanks again for"
	line "raising it!"
	done

VioletKyleRefusedText: ;added
	text "Oh..."

	para "Well, let me know"
	line "if you change"
	cont "your mind..."

VioletKyleFullPartyText: ;added
	text "Oh, no. You can't"
	line "carry any more"
	cont "#MON with you."

	para "I will be here"
	line "if you ever make"
	cont "room for ONIX."
	done

VioletKyleGaveOnixText: ;added
	text "ONIX never really"
	line "considered me as"
	cont "its trainer..."

	para "I am glad you're"
	line "going to raise"
	cont "it now. Thanks!"
	done	

VioletKylesHousePokefanMText:
	;text "A #MON you get"
	;line "in a trade grows"
	;cont "quickly."

	;para "But if you don't"
	;line "have the right GYM"

	;para "BADGE, they may"
	;line "disobey you."
	text "Rock and electric"
	line "types are both"
	cont "good vs flying."

	para "Use one if you are"
	line "having trouble"
	cont "beating FALKNER."
	done

VioletKylesHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, VIOLET_CITY, 6
	warp_event  4,  7, VIOLET_CITY, 6

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_POKEFAN_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VioletKylesHousePokefanMScript, -1
	object_event  6,  5, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 2, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Kyle, -1
