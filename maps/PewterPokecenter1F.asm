	object_const_def
	const PEWTERPOKECENTER1F_NURSE
	const PEWTERPOKECENTER1F_TEACHER
	const PEWTERPOKECENTER1F_JIGGLYPUFF
	const PEWTERPOKECENTER1F_BUG_CATCHER
	const PEWTERPOKECENTER1F_CHRIS

PewterPokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

PewterPokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

PewterPokecenter1FTeacherScript:
	jumptextfaceplayer PewterPokecenter1FTeacherText

PewterJigglypuff:
	opentext
	writetext PewterJigglypuffText
	cry JIGGLYPUFF
	waitbutton
	closetext
	end

PewterPokecenter1FBugCatcherScript:
	jumptextfaceplayer PewterPokecenter1FBugCatcherText

Chris:
	faceplayer
	;opentext
	;trade NPC_TRADE_CHRIS
	;waitbutton
	;closetext
	;end
	checkevent EVENT_GOT_A_DEWGONG_FROM_CHRIS
	iftrue .AskHowPokemon
	opentext
	writetext ChrisGivePokemonText
	yesorno
	iffalse .RefusedPokemon
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .PartyFull
	givepoke DEWGONG, 50, KINGS_ROCK
	setevent EVENT_GOT_A_DEWGONG_FROM_CHRIS
	writetext ChrisGavePokemonText
	waitbutton
	closetext
	end

.AskHowPokemon: ;added
	opentext
	writetext ChrisHowDoingText
	waitbutton
	closetext
	end

.RefusedPokemon: ;added
	writetext ChrisRefusedText
	waitbutton
	closetext
	end

.PartyFull: ;added
	writetext ChrisFullPartyText
	waitbutton
	closetext
	end


ChrisGivePokemonText: ;added
	text "I won a DEWGONG"
	line "in a bet, but I"
	cont "don't want it."
	
	para "If you don't mind,"
	line "could you raise it"
	cont "for me?"
	done

ChrisHowDoingText: ;added
	text "How is DEWGONG?"
	
	para "Thanks again for"
	line "raising it!"
	done

ChrisRefusedText: ;added
	text "Oh..."

	para "Well, let me know"
	line "if you change"
	cont "your mind..."
	done

ChrisFullPartyText: ;added
	text "Oh, no. You can't"
	line "carry any more"
	cont "#MON with you."

	para "I will be here"
	line "if you ever want"
	cont "DEWGONG."
	done

ChrisGavePokemonText: ;added
	para "I am glad you're"
	line "going to raise"
	cont "it now. Thanks!"
	done

PewterPokecenter1FTeacherText:
	text "…Yeah, and the"
	line "GYM in CINNABAR's"

	para "gone. I was really"
	line "amazed."

	para "…Yes? I'm on the"
	line "phone. Go away!"
	done

PewterJigglypuffText:
	text "JIGGLYPUFF: Puu"
	line "pupuu."
	done

PewterPokecenter1FBugCatcherText:
	text "Most #MON get"
	line "drowsy if they"

	para "hear a JIGGLYPUFF"
	line "singing."

	para "There are several"
	line "moves that can be"

	para "used only while a"
	line "#MON is asleep."
	done

PewterPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, PEWTER_CITY, 4
	warp_event  4,  7, PEWTER_CITY, 4
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PewterPokecenter1FNurseScript, -1
	object_event  8,  6, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, PewterPokecenter1FTeacherScript, -1
	object_event  1,  3, SPRITE_JIGGLYPUFF, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PewterJigglypuff, -1
	object_event  2,  3, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, PewterPokecenter1FBugCatcherScript, -1
	object_event  7,  2, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Chris, -1
