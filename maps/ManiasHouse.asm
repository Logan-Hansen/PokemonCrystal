	object_const_def
	const MANIASHOUSE_ROCKER

ManiasHouse_MapScripts:
	def_scene_scripts

	def_callbacks

ManiaScript:
	faceplayer
	checkevent EVENT_GOT_SHUCKIE
	iftrue .TakeCareOfShuckleThanks
	opentext
	writetext ManiaText_AskLookAfterShuckle
	yesorno
	iffalse .RefusedShuckle
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .PartyFull
	givepoke SHUCKLE, 20, BERRY
	playsound SFX_KEY_ITEM
	waitsfx
	setevent EVENT_GOT_SHUCKIE
	writetext ManiaText_TakeCareOfShuckle
	waitbutton
	closetext
	end

.TakeCareOfShuckleThanks:
	opentext
	writetext ManiaText_TakeCareOfShuckle
	waitbutton
	closetext
	end

.RefusedShuckle:
	writetext RefusedShuckleText
	waitbutton
	closetext
	end

.PartyFull:
	writetext FullPartyText
	waitbutton
	closetext
	end

ManiaText_AskLookAfterShuckle:
	text "I, I'm in shock!"

	para "A guy about your"
	line "age with piercing"

	para "eyes and long hair"
	line "came in."

	para "He scared me into"
	line "giving him my"
	cont "prized #MON!"

	para "I still have one"
	line "left, but what if"
	cont "he comes back?"

	para "You look strong."
	line "Could you look"

	para "after my #MON"
	line "instead?"
	done

ManiaText_TakeCareOfShuckle:
	text "Oh, thank you!"

	para "Take good care of"
	line "it, please!"
	done

RefusedShuckleText:
	text "Oh..."

	para "Well, let me know"
	line "if you change"
	cont "your mind..."
	done

FullPartyText:
	text "Oh, no. You can't"
	line "carry any more"
	cont "#MON with you."

	para "I will be here"
	line "if you ever make"
	cont "room for SHUCKLE."
	done

ManiasHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, CIANWOOD_CITY, 1
	warp_event  3,  7, CIANWOOD_CITY, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  4, SPRITE_ROCKER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ManiaScript, -1
