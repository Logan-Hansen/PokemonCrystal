BillPhoneCalleeScript:
	checktime DAY
	iftrue .daygreet
	checktime NITE
	iftrue .nitegreet
	farwritetext BillPhoneMornGreetingText
	promptbutton
	sjump .main

.daygreet
	farwritetext BillPhoneDayGreetingText
	promptbutton
	sjump .main

.nitegreet
	farwritetext BillPhoneNiteGreetingText
	promptbutton
	sjump .main

.main
	farwritetext BillPhoneGenericText
	promptbutton
	readvar VAR_BOXSPACE
	getnum STRING_BUFFER_3
	ifequal 0, .full
	ifless PARTY_LENGTH, .nearlyfull
	farwritetext BillPhoneNotFullText
	end

.nearlyfull
	farwritetext BillPhoneNearlyFullText
;	end
	promptbutton
	sjump BillPhoneSwitchBoxScript

.full
	farwritetext BillPhoneFullText
;	end
	promptbutton
	sjump BillPhoneSwitchBoxScript

BillPhoneCallerScript:
	farwritetext BillPhoneNewlyFullText
	waitbutton
;	end
	promptbutton
	; fallthrough

BillPhoneSwitchBoxScript:
	farwritetext BillPhoneAskChangeBoxText
	yesorno
	iffalse .denyswitch
	special SwitchNextPCBox
	iffalse .denyswitch

	readvar VAR_BOXSPACE
	getnum STRING_BUFFER_3
	ifless PARTY_LENGTH, .cantswitch

	farwritetext BillPhoneConfirmChangeBoxText
	promptbutton
	sjump .hangup

.cantswitch
	farwritetext BillPhoneChangeBoxAllFullText
	promptbutton
	sjump .hangup

.denyswitch
	farwritetext BillPhoneDenyChangeBoxText
	promptbutton
.hangup
	farwritetext BillPhoneHangUpText
	end
