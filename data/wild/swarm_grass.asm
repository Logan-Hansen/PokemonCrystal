; Pokémon swarms in grass

SwarmGrassWildMons:

; Dunsparce swarm
	map_id DARK_CAVE_VIOLET_ENTRANCE
	db 4 percent, 4 percent, 4 percent ; encounter rates: morn/day/nite
	; morn
	;  %, species,		min, max
	db 70, DUNSPARCE, 	  2,   4
	db  5, TEDDIURSA, 	  2,   3
	db 10, GEODUDE, 	  2,   3
	db 10, ZUBAT, 		  2,   3
	db  5, LARVITAR, 	  5,   5
	db  0, RATTATA, 	  5,   5
	db  0, RATTATA, 	  5,   5

	; day
	;  %, species,		min, max
	db 70, DUNSPARCE, 	  2,   4
	db  0, TEDDIURSA, 	  2,   3
	db 15, GEODUDE, 	  2,   3
	db 10, ZUBAT, 		  2,   3
	db  5, LARVITAR, 	  5,   5
	db  0, RATTATA, 	  5,   5
	db  0, RATTATA, 	  5,   5

	; nite
	;  %, species,		min, max
	db 70, DUNSPARCE, 	  2,   4
	db  0, TEDDIURSA, 	  2,   3
	db 10, GEODUDE, 	  2,   3
	db 15, ZUBAT, 		  2,   3
	db  5, LARVITAR, 	  5,   5
	db  0, RATTATA, 	  5,   5
	db  0, RATTATA, 	  5,   5	

; Yanma swarm
	map_id ROUTE_35
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	;  %, species,		min, max
	db 70, YANMA, 	 	 12,  15
	db  8, NIDORAN_F, 	 12,  15
	db  8, NIDORAN_M, 	 12,  15
	db  8, DITTO, 		 12,  15
	db  6, PIDGEY,	 	 12,  15
	db  0, RATTATA, 	 12,  15
	db  0, RATTATA, 	 12,  15

	; day
	;  %, species,		min, max
	db 70, YANMA, 	 	 12,  15
	db  8, NIDORAN_F, 	 12,  15
	db  8, NIDORAN_M, 	 12,  15
	db  8, DITTO, 		 12,  15
	db  6, PIDGEY,	 	 12,  15
	db  0, RATTATA, 	 12,  15
	db  0, RATTATA, 	 12,  15

	; nite
	;  %, species,		min, max
	db 70, YANMA, 	 	 12,  15
	db  7, NIDORAN_F, 	 12,  15
	db  7, NIDORAN_M, 	 12,  15
	db  5, DITTO, 		 12,  15
	db  9, MURKROW, 	 12,  15
	db  2, HOOTHOOT, 	 12,  15
	db  0, RATTATA, 	 12,  15	

; Rare swarm
	map_id ROUTE_39
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	;  %, species,		min, max
	db 15, EEVEE,	 	 14,  16
	db 15, PICHU,	 	 14,  16
	db 15, IGGLYBUFF, 	 14,  16
	db 15, CLEFFA, 		 14,  16
	db 15, TYROGUE, 	 14,  16
	db 10, TOGEPI,	 	 14,  16
	db 15, AIPOM, 		 14,  16

	; day
	;  %, species,		min, max
	db 20, EEVEE,	 	 14,  16
	db 30, PICHU,	 	 14,  16
	db  0, IGGLYBUFF, 	 14,  16
	db  0, CLEFFA, 		 14,  16
	db 20, TYROGUE, 	 14,  16
	db 10, TOGEPI,	 	 14,  16
	db 20, AIPOM, 		 14,  16

	; nite
	;  %, species,		min, max
	db 20, IGGLYBUFF, 	 14,  16
	db 20, CLEFFA, 		 14,  16
	db 20, MURKROW, 	 14,  16
	db 20, MEOWTH, 	  	 14,  16
	db 20, GRIMER,	 	 14,  16
	db  0, RATTATA, 	 14,  16
	db  0, RATTATA, 	 14,  16	

	db -1 ; end