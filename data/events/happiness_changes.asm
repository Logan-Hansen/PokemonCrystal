HappinessChanges:
; entries correspond to HAPPINESS_* constants
	table_width 3, HappinessChanges
	; change if happiness < 100, change if happiness < 200, change otherwise
	db +10, +10,  +5 ; Gained a level
	db  +5,  +3,  +2 ; Vitamin
	db  +1,  +1,  +0 ; X Item
	db +20, +10,  +2 ; Battled a Gym Leader
	db  +5,  +1,  +0 ; Learned a move
	db  -1,  -1,  -1 ; Lost to an enemy
	db  -5,  -5, -10 ; Fainted due to poison
	db  -5,  -5, -10 ; Lost to a much stronger enemy
	db +20, +10,  +8 ; Haircut (older brother) 1
	db +20, +20,  +8 ; Haircut (older brother) 2
	db +30, +30, +16 ; Haircut (older brother) 3
	db +10, +10,  +8 ; Haircut (younger brother) 1
	db +20, +20,  +8 ; Haircut (younger brother) 2
	db +40, +40, +16 ; Haircut (younger brother) 3
	db  -5,  -5, -10 ; Used Heal Powder or Energypowder (bitter)
	db -10, -10, -15 ; Used Energy Root (bitter)
	db -15, -15, -20 ; Used Revival Herb (bitter)
	db +20, +20, +20 ; Grooming
	db +20, +10, +10 ; Gained a level in the place where it was caught
	assert_table_length NUM_HAPPINESS_CHANGES
