	object_const_def
	const GOLDENRODDEPTSTORE5F_CLERK
	const GOLDENRODDEPTSTORE5F_LASS
	const GOLDENRODDEPTSTORE5F_MIKE
	const GOLDENRODDEPTSTORE5F_POKEFAN_M
	const GOLDENRODDEPTSTORE5F_CARRIE
	const GOLDENRODDEPTSTORE5F_RECEPTIONIST

GoldenrodDeptStore5F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, GoldenrodDeptStore5FCheckIfSundayCallback

GoldenrodDeptStore5FCheckIfSundayCallback:
	readvar VAR_WEEKDAY
	ifequal SUNDAY, .yes
	disappear GOLDENRODDEPTSTORE5F_RECEPTIONIST
	endcallback

.yes
	appear GOLDENRODDEPTSTORE5F_RECEPTIONIST
	endcallback

GoldenrodDeptStore5FClerkScript:
	faceplayer
	opentext
	pokemart MARTTYPE_STANDARD, MART_GOLDENROD_5F
	closetext
	end

GoldenrodDeptStore5FReceptionistScript:
	faceplayer
	opentext
	readvar VAR_WEEKDAY
	ifnotequal SUNDAY, .EventIsOver
	checkflag ENGINE_GOLDENROD_DEPT_STORE_TM27_RETURN
	iftrue .EventIsOver
	special GetFirstPokemonHappiness
	writetext GoldenrodDeptStore5FReceptionistOhYourMonDotDotDotText
	promptbutton
	ifgreater 150 - 1, .VeryHappy
	ifgreater 50 - 1, .SomewhatHappy
	sjump .NotVeryHappy

.VeryHappy:
	writetext GoldenrodDeptStore5FReceptionistThisMoveShouldBePerfectText
	promptbutton
	checkitem TM_RETURN
	iftrue .AlreadyGotTM
	verbosegiveitem TM_RETURN
	setflag ENGINE_GOLDENROD_DEPT_STORE_TM27_RETURN
	closetext
	end

.SomewhatHappy:
	writetext GoldenrodDeptStore5FReceptionistItsAdorableText
	waitbutton
	closetext
	end

.NotVeryHappy:
	writetext GoldenrodDeptStore5FReceptionistItLooksEvilHowAboutThisTMText
	promptbutton
	checkitem TM_FRUSTRATION
	iftrue .AlreadyGotTM
	verbosegiveitem TM_FRUSTRATION
	setflag ENGINE_GOLDENROD_DEPT_STORE_TM27_RETURN
	closetext
	end

.AlreadyGotTM:
	writetext GoldenrodDeptStore5FAlreadyGotTMText
	waitbutton
	closetext
	end

.EventIsOver:
	writetext GoldenrodDeptStore5FReceptionistThereAreTMsPerfectForMonText
	waitbutton
.Done:
	closetext
	end

Carrie:
	faceplayer
	opentext
	special GameboyCheck
	ifnotequal GBCHECK_CGB, .NotGBC ; This is a dummy check from Gold/Silver
	writetext GoldenrodDeptStore5FCarrieMysteryGiftExplanationText
	waitbutton
	closetext
	special UnlockMysteryGift
	end

.NotGBC:
	writetext GoldenrodDeptStore5FCarrieMysteryGiftRequiresGBCText
	waitbutton
	closetext
	end

GoldenrodDeptStore5FLassScript:
	jumptextfaceplayer GoldenrodDeptStore5FLassText

Mike:
	faceplayer
	;opentext
	;trade NPC_TRADE_MIKE
	;waitbutton
	;closetext
	;end
	checkevent EVENT_GOT_A_MACHOP_FROM_MIKE
	iftrue .AskHowMachop
	opentext
	writetext GoldenrodMikeGiveMachopText
	yesorno
	iffalse .RefusedMachop
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .PartyFull
	givepoke MACHOP, 15, GOLD_BERRY
	setevent EVENT_GOT_A_MACHOP_FROM_MIKE
	writetext GoldenrodMikeGaveMachopText
	waitbutton
	closetext
	end

.AskHowMachop: ;added
	opentext
	writetext GoldenrodMikeHowDoingText
	waitbutton
	closetext
	end

.RefusedMachop: ;added
	writetext GoldenrodMikeRefusedText
	waitbutton
	closetext
	end

.PartyFull: ;added
	writetext GoldenrodMikeFullPartyText
	waitbutton
	closetext
	end

GoldenrodDeptStore5FPokefanMScript:
	jumptextfaceplayer GoldenrodDeptStore5FPokefanMText

GoldenrodDeptStore5FDirectory:
	jumptext GoldenrodDeptStore5FDirectoryText

GoldenrodDeptStore5FElevatorButton:
	jumpstd ElevatorButtonScript

GoldenrodMikeGiveMachopText: ;added
	text "I got an MACHOP,"
	line "but I don't use"
	cont "it very often."
	
	para "If you don't mind,"
	line "could you raise it"
	cont "for me?"
	done

GoldenrodMikeHowDoingText: ;added
	text "How is MACHOP?"
	
	para "Thanks again for"
	line "raising it!"
	done

GoldenrodMikeRefusedText: ;added
	text "Oh..."

	para "Well, let me know"
	line "if you change"
	cont "your mind..."
	done

GoldenrodMikeFullPartyText: ;added
	text "Oh, no. You can't"
	line "carry any more"
	cont "#MON with you."

	para "I will be here"
	line "if you ever make"
	cont "room for MACHOP."
	done

GoldenrodMikeGaveMachopText: ;added
	text "MACHOP will be a"
	line "lot happier with"
	cont "someone else."

	para "I am glad you're"
	line "going to raise"
	cont "it now. Thanks!"
	done

GoldenrodDeptStore5FReceptionistOhYourMonDotDotDotText:
	text "Hello. Oh, your"
	line "#MON…"
	done

GoldenrodDeptStore5FReceptionistThisMoveShouldBePerfectText:
	text "It's very attached"
	line "to you."

	para "This move should"
	line "be perfect for a"
	cont "pair like you."
	done

GoldenrodDeptStore5FReceptionistItsAdorableText:
	text "It's adorable!"

	para "You should teach"
	line "it good TM moves."
	done

GoldenrodDeptStore5FReceptionistItLooksEvilHowAboutThisTMText:
	text "It looks evil. How"
	line "about this TM for"
	cont "it?"
	done

GoldenrodDeptStore5FReceptionistThereAreTMsPerfectForMonText:
	text "There are sure to"
	line "be TMs that are"

	para "just perfect for"
	line "your #MON."
	done

GoldenrodDeptStore5FAlreadyGotTMText:
	text "Oh, you already"
	line "have this TM…"
	done

GoldenrodDeptStore5FCarrieMysteryGiftExplanationText:
	text "MYSTERY GIFT."

	para "With just a"
	line "little beep, you"
	cont "get a gift."
	done

GoldenrodDeptStore5FCarrieMysteryGiftRequiresGBCText:
	text "The MYSTERY GIFT"
	line "option requires a"
	cont "Game Boy Color."
	done

GoldenrodDeptStore5FLassText:
	text "On Sundays, a lady"
	line "comes to check out"
	cont "#MON."

	para "She even gives"
	line "away TMs!"
	done

GoldenrodDeptStore5FPokefanMText:
	text "TMs can help you"
	line "give coverage to"
	cont "beat other types."
	done

GoldenrodDeptStore5FDirectoryText:
	text "Customize Your"
	line "#MON"

	para "5F TM CORNER"
	done

GoldenrodDeptStore5F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 12,  0, GOLDENROD_DEPT_STORE_4F, 1
	warp_event 15,  0, GOLDENROD_DEPT_STORE_6F, 1
	warp_event  2,  0, GOLDENROD_DEPT_STORE_ELEVATOR, 1

	def_coord_events

	def_bg_events
	bg_event 14,  0, BGEVENT_READ, GoldenrodDeptStore5FDirectory
	bg_event  3,  0, BGEVENT_READ, GoldenrodDeptStore5FElevatorButton

	def_object_events
	object_event  8,  5, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStore5FClerkScript, -1
	object_event  3,  6, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStore5FLassScript, -1
	object_event  6,  3, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Mike, -1
	object_event 13,  5, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStore5FPokefanMScript, -1
	object_event  9,  1, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Carrie, -1
	object_event  7,  5, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStore5FReceptionistScript, EVENT_GOLDENROD_DEPT_STORE_5F_HAPPINESS_EVENT_LADY
