	db ENTEI ; 244

	db 115,  90,  85, 100, 115,  75
	;   hp  atk  def  spd  sat  sdf
	;  115, 115,  85, 100,  90,  75
	db FIRE, FIRE ; type
	db 30 ; catch rate 3
	db 217 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 100 ; unknown 1
	db 10 ; step cycles to hatch 80
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/entei/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROAR, TOXIC, ROCK_SMASH, PSYCH_UP, HIDDEN_POWER, SUNNY_DAY, SNORE, HYPER_BEAM, PROTECT, RAIN_DANCE, ENDURE, FRUSTRATION, SOLARBEAM, IRON_TAIL, RETURN, DIG, MUD_SLAP, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SANDSTORM, FIRE_BLAST, SWIFT, DETECT, REST, CUT, STRENGTH, FLASH, FLAMETHROWER
	; end
