; Kanto Pokémon in grass

KantoGrassWildMons:

	def_grass_wildmons DIGLETTS_CAVE
	db 4 percent, 2 percent, 8 percent ; encounter rates: morn/day/nite
	; morn
	;  %, species,		min, max
	db 80, DIGLETT, 	 16,   24
	db 20, DUGTRIO, 	 24,   27
	db  0, RATTATA, 	  5,   5
	db  0, RATTATA, 	  5,   5
	db  0, RATTATA, 	  5,   5
	db  0, RATTATA, 	  5,   5
	db  0, RATTATA, 	  5,   5

	; day
	;  %, species,		min, max
	db 60, DIGLETT, 	 16,   24
	db 40, DUGTRIO, 	 26,   28
	db  0, RATTATA, 	  5,   5
	db  0, RATTATA, 	  5,   5
	db  0, RATTATA, 	  5,   5
	db  0, RATTATA, 	  5,   5
	db  0, RATTATA, 	  5,   5

	; nite
	;  %, species,		min, max
	db 40, DIGLETT, 	 16,   24
	db 60, DUGTRIO, 	 27,   34
	db  0, RATTATA, 	  5,   5
	db  0, RATTATA, 	  5,   5
	db  0, RATTATA, 	  5,   5
	db  0, RATTATA, 	  5,   5
	db  0, RATTATA, 	  5,   5	
	end_grass_wildmons

	def_grass_wildmons MOUNT_MOON
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	;  %, species,		min, max
	db 30, SANDSHREW, 	  6,  12
	db 30, GEODUDE, 	  6,  12
	db 20, ZUBAT, 		  6,  12
	db 15, PARAS, 		  6,  12
	db  5, CLEFAIRY, 	  6,  12
	db  0, RATTATA, 	  6,  12
	db  0, RATTATA, 	  6,  12

	; day
	;  %, species,		min, max
	db 30, SANDSHREW, 	  6,  12
	db 30, GEODUDE, 	  6,  12
	db 20, ZUBAT, 		  6,  12
	db 15, PARAS, 		  6,  12
	db  5, CLEFAIRY, 	  6,  12
	db  0, RATTATA, 	  6,  12
	db  0, RATTATA, 	  6,  12

	; nite
	;  %, species,		min, max
	db  0, SANDSHREW, 	  6,  12
	db 30, GEODUDE, 	  6,  12
	db 20, ZUBAT, 		  6,  12
	db 15, PARAS, 		  6,  12
	db 35, CLEFAIRY, 	  6,  12
	db  0, RATTATA, 	  6,  12
	db  0, RATTATA, 	  6,  12	
	end_grass_wildmons

	def_grass_wildmons ROCK_TUNNEL_1F
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	;  %, species,		min, max
	db 25, CUBONE, 	 	 10,  15
	db 10, MAROWAK, 	 10,  15
	db 25, MACHOP, 	 	 10,  15
	db 10, MACHOKE, 	 10,  15
	db 10, GEODUDE, 	 10,  15
	db 10, ZUBAT, 		 10,  15
	db  0, HAUNTER, 	 10,  15

	; day
	;  %, species,		min, max
	db 25, CUBONE, 	 	 10,  15
	db 10, MAROWAK, 	 10,  15
	db 25, MACHOP, 	 	 10,  15
	db 10, MACHOKE, 	 10,  15
	db 10, GEODUDE, 	 10,  15
	db 10, ZUBAT, 		 10,  15
	db  0, HAUNTER, 	 10,  15

	; nite
	;  %, species,		min, max
	db  0, CUBONE, 	 	 10,  15
	db  0, MAROWAK, 	 10,  15
	db  0, MACHOP, 	 	 10,  15
	db  0, MACHOKE, 	 10,  15
	db 30, GEODUDE, 	 10,  15
	db 40, ZUBAT, 		 10,  15
	db 30, HAUNTER, 	 10,  15	
	end_grass_wildmons

	def_grass_wildmons ROCK_TUNNEL_B1F
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	;  %, species,		min, max
	db 25, CUBONE, 	 	 11,  16
	db 10, MAROWAK, 	 11,  16
	db  5, KANGASKHAN, 	 11,  16
	db 20, GEODUDE, 	 11,  16
	db 20, ONIX, 		 11,  16
	db 20, ZUBAT, 		 11,  16
	db  0, GOLBAT,	 	 11,  16

	; day
	;  %, species,		min, max
	db 25, CUBONE, 	 	 11,  16
	db 10, MAROWAK, 	 11,  16
	db  5, KANGASKHAN, 	 11,  16
	db 20, GEODUDE, 	 11,  16
	db 20, ONIX, 		 11,  16
	db 20, ZUBAT, 		 11,  16
	db  0, GOLBAT,	 	 11,  16

	; nite
	;  %, species,		min, max
	db  0, CUBONE, 	 	 11,  16
	db  0, MAROWAK, 	 11,  16
	db  5, HAUNTER, 	 10,  15
	db 40, GEODUDE, 	 11,  16
	db 25, ONIX, 		 11,  16
	db 20, ZUBAT, 		 11,  16
	db 10, GOLBAT,	 	 11,  16	
	end_grass_wildmons

	def_grass_wildmons VICTORY_ROAD
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	;  %, species,		min, max
	db 24, RHYHORN, 	 34,  36
	db  4, RHYDON, 	  	 34,  36
	db  8, SANDSLASH, 	 34,  36
	db 36, ONIX, 	  	 34,  36
	db  8, GOLBAT, 	  	 34,  36
	db 20, GRAVELER, 	 34,  36
	db  0, RATTATA, 	 34,  36

	; day
	;  %, species,		min, max
	db 24, RHYHORN, 	 34,  36
	db  4, RHYDON, 	  	 34,  36
	db  8, SANDSLASH, 	 34,  36
	db 36, ONIX, 	  	 34,  36
	db  8, GOLBAT, 	  	 34,  36
	db 20, GRAVELER, 	 34,  36
	db  0, RATTATA, 	 34,  36

	; nite
	;  %, species,		min, max
	db 20, ONIX, 	  	 34,  36
	db 20, GOLBAT, 	  	 34,  36
	db 60, GRAVELER, 	 34,  36
	db  0, RATTATA, 	  5,   5
	db  0, RATTATA, 	  5,   5
	db  0, RATTATA, 	  5,   5
	db  0, RATTATA, 	  5,   5	
	end_grass_wildmons

	def_grass_wildmons TOHJO_FALLS
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	;  %, species,		min, max
	db 10, RATTATA, 	 22,  24
	db 30, RATICATE, 	 22,  24
	db 20, SLOWPOKE, 	 22,  24
	db 25, ZUBAT, 		 22,  24
	db 15, GOLBAT, 		 22,  24
	db  0, RATTATA, 	 22,  24
	db  0, RATTATA, 	 22,  24

	; day
	;  %, species,		min, max
	db 10, RATTATA, 	 22,  24
	db 30, RATICATE, 	 22,  24
	db 20, SLOWPOKE, 	 22,  24
	db 25, ZUBAT, 		 22,  24
	db 15, GOLBAT, 		 22,  24
	db  0, RATTATA, 	 22,  24
	db  0, RATTATA, 	 22,  24

	; nite
	;  %, species,		min, max
	db 10, RATTATA, 	 22,  24
	db 30, RATICATE, 	 22,  24
	db 20, SLOWPOKE, 	 22,  24
	db 25, ZUBAT, 		 22,  24
	db 15, GOLBAT, 		 22,  24
	db  0, RATTATA, 	 22,  24
	db  0, RATTATA, 	 22,  24	
	end_grass_wildmons

	def_grass_wildmons ROUTE_1
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	;  %, species,		min, max
	db 40, PIDGEY, 	 	  2,   6
	db 15, SENTRET, 	  2,   6
	db 15, FURRET,	 	  4,   6
	db 30, RATTATA, 	  2,   6
	db  0, RATICATE, 	  4,   6
	db  0, HOOTHOOT, 	  2,   6
	db  0, RATTATA, 	  2,   6

	; day
	;  %, species,		min, max
	db 40, PIDGEY, 	 	  2,   6
	db 15, SENTRET, 	  2,   6
	db 15, FURRET,	 	  4,   6
	db 30, RATTATA, 	  2,   6
	db  0, RATICATE, 	  2,   6
	db  0, HOOTHOOT, 	  2,   6
	db  0, RATTATA, 	  2,   6

	; nite
	;  %, species,		min, max
	db  0, PIDGEY, 		  2,   6
	db  0, SENTRET, 	  2,   6
	db  0, FURRET,	 	  4,   6
	db 35, RATTATA, 	  2,   6
	db  5, RATICATE, 	  2,   6
	db 60, HOOTHOOT, 	  2,   6
	db  0, RATTATA, 	  2,   6	
	end_grass_wildmons

	def_grass_wildmons ROUTE_2
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	;  %, species,		min, max
	db 40, LEDYBA, 	  	  4,   7
	db 10, LEDIAN, 	  	  4,   7
	db 10, PIDGEY, 	  	  4,   7
	db 25, CATERPIE, 	  4,   7
	db  5, BUTTERFREE, 	  10, 10
	db 10, PIKACHU, 	  4,   7
	db 10, PIDGEOTTO, 	  7,   7

	; day
	;  %, species,		min, max
	db  0, LEDYBA, 	  	  4,   7
	db  0, LEDIAN, 	  	  4,   7
	db 50, PIDGEY, 	  	  4,   7
	db 25, CATERPIE, 	  4,   7
	db  5, BUTTERFREE, 	  10, 10
	db 10, PIKACHU, 	  4,   7
	db 10, PIDGEOTTO, 	  7,   7

	; nite
	;  %, species,		min, max
	db 40, SPINARAK, 	  4,   7
	db 10, ARIADOS,  	 10,  10
	db 40, HOOTHOOT, 	  4,   7
	db 10, NOCTOWL, 	 10,  10
	db  0, RATTATA, 	  4,   7
	db  0, RATTATA, 	  4,   7
	db  0, RATTATA, 	  4,   7	
	end_grass_wildmons

	def_grass_wildmons ROUTE_3
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	;  %, species,		min, max
	db 30, SPEAROW, 	  5,  10
	db 10, SANDSHREW, 	  5,  10
	db 15, EKANS, 		  5,  10
	db 10, ARBOK, 		  5,  10
	db 20, RATTATA, 	  5,  10
	db 15, RATICATE, 	 10,  10
	db  0, RATTATA, 	  5,  10

	; day
	;  %, species,		min, max
	db 10, SPEAROW, 	  5,  10
	db 10, SANDSHREW, 	  5,  10
	db 15, EKANS, 		  5,  10
	db 10, ARBOK, 		  5,  10
	db 40, RATTATA, 	  5,  10
	db 15, RATICATE, 	 10,  10
	db  0, RATTATA, 	  5,  10

	; nite
	;  %, species,		min, max
	db 70, RATTATA, 	  5,  10
	db 20, RATICATE, 	 10,  10
	db  5, ZUBAT,	 	  5,  10
	db  5, CLEFAIRY, 	  5,  10
	db  0, RATTATA, 	  5,   5
	db  0, RATTATA, 	  5,   5
	db  0, RATTATA, 	  5,   5	
	end_grass_wildmons

	def_grass_wildmons ROUTE_4
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	;  %, species,		min, max
	db 30, SPEAROW, 	  5,  10
	db 10, SANDSHREW, 	  5,  10
	db 15, EKANS, 		  5,  10
	db 10, ARBOK, 		  5,  10
	db 20, RATTATA, 	  5,  10
	db 15, RATICATE, 	 10,  10
	db  0, RATTATA, 	  5,  10

	; day
	;  %, species,		min, max
	db 10, SPEAROW, 	  5,  10
	db 10, SANDSHREW, 	  5,  10
	db 15, EKANS, 		  5,  10
	db 10, ARBOK, 		  5,  10
	db 40, RATTATA, 	  5,  10
	db 15, RATICATE, 	 10,  10
	db  0, RATTATA, 	  5,  10

	; nite
	;  %, species,		min, max
	db 70, RATTATA, 	  5,  10
	db 20, RATICATE, 	 10,  10
	db  5, ZUBAT,	 	  5,  10
	db  5, CLEFAIRY, 	  5,  10
	db  0, RATTATA, 	  5,   5
	db  0, RATTATA, 	  5,   5
	db  0, RATTATA, 	  5,   5	
	end_grass_wildmons

	def_grass_wildmons ROUTE_5
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	;  %, species,		min, max
	db 30, PIDGEY, 	  	 13,  16
	db 15, PIDGEOTTO, 	 13,  16
	db 30, SNUBBULL, 	 13,  16
	db 20, ABRA, 	     13,  16
	db  5, JIGGLYPUFF, 	 13,  16
	db  0, RATTATA, 	 13,  16
	db  0, RATTATA, 	 13,  16

	; day
	;  %, species,		min, max
	db 30, PIDGEY, 	  	 13,  16
	db 15, PIDGEOTTO, 	 13,  16
	db 30, SNUBBULL, 	 13,  16
	db 20, ABRA, 	     13,  16
	db  5, JIGGLYPUFF, 	 13,  16
	db  0, RATTATA, 	 13,  16
	db  0, RATTATA, 	 13,  16

	; nite
	;  %, species,		min, max
	db 40, ABRA, 	     13,  16
	db  5, JIGGLYPUFF, 	 13,  16
	db 20, MEOWTH, 	  	 13,  16
	db 20, HOOTHOOT, 	 13,  16
	db 15, NOCTOWL, 	 13,  16
	db  0, RATTATA, 	 13,  16
	db  0, RATTATA, 	 13,  16	
	end_grass_wildmons

	def_grass_wildmons ROUTE_6
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	;  %, species,		min, max
	db 30, RATTATA,	  	 13,  16
	db 15, GRANBULL, 	 13,  16
	db 30, SNUBBULL, 	 13,  16
	db 20, MAGNEMITE,    13,  16
	db  5, JIGGLYPUFF, 	 13,  16
	db  0, RATTATA, 	 13,  16
	db  0, RATTATA, 	 13,  16

	; day
	;  %, species,		min, max
	db 30, RATTATA,	  	 13,  16
	db 15, GRANBULL, 	 13,  16
	db 30, SNUBBULL, 	 13,  16
	db 20, MAGNEMITE,    13,  16
	db  5, JIGGLYPUFF, 	 13,  16
	db  0, RATTATA, 	 13,  16
	db  0, RATTATA, 	 13,  16

	; nite
	;  %, species,		min, max
	db 20, MEOWTH, 	     13,  16
	db  5, JIGGLYPUFF, 	 13,  16
	db 20, DROWZEE,	  	 13,  16
	db 20, MAGNEMITE, 	 13,  16
	db 15, PSYDUCK, 	 13,  16
	db 20, RATICATE, 	 13,  16
	db  0, RATTATA, 	 13,  16	
	end_grass_wildmons

	def_grass_wildmons ROUTE_7
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	;  %, species,		min, max
	db 40, SPEAROW, 	 16,  18
	db 20, RATTATA, 	 16,  18
	db  8, RATICATE, 	 16,  18
	db 16, SNUBBULL, 	 16,  18
	db  8, ABRA, 	  	 16,  18
	db  8, JIGGLYPUFF, 	 16,  18
	db  0, RATTATA, 	 16,  18

	; day
	;  %, species,		min, max
	db 40, SPEAROW, 	 16,  18
	db 20, RATTATA, 	 16,  18
	db  8, RATICATE, 	 16,  18
	db 16, SNUBBULL, 	 16,  18
	db  8, ABRA, 	  	 16,  18
	db  8, JIGGLYPUFF, 	 16,  18
	db  0, RATTATA, 	 16,  18

	; nite
	;  %, species,		min, max
	db  8, ABRA, 	  	 16,  18
	db  8, JIGGLYPUFF, 	 16,  18
	db 20, MEOWTH, 	     16,  18
	db 16, PERSIAN, 	 18,  20
	db 20, HOUNDOUR, 	 16,  18
	db 28, MURKROW, 	 16,  18
	db  0, RATTATA, 	 16,  18	
	end_grass_wildmons

	def_grass_wildmons ROUTE_8
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	;  %, species,		min, max
	db 30, PIDGEOTTO, 	 19,  21
	db 30, SNUBBULL, 	 19,  21
	db 12, GROWLITHE, 	 19,  21
	db 12, ABRA,	 	 19,  21
	db  8, KADABRA,	  	 19,  21
	db  8, JIGGLYPUFF, 	 19,  21
	db  0, RATTATA, 	 19,  21

	; day
	;  %, species,		min, max
	db 30, PIDGEOTTO, 	 19,  21
	db 30, SNUBBULL, 	 19,  21
	db 12, GROWLITHE, 	 19,  21
	db 12, ABRA,	 	 19,  21
	db  8, KADABRA,	  	 19,  21
	db  8, JIGGLYPUFF, 	 19,  21
	db  0, RATTATA, 	 19,  21

	; nite
	;  %, species,		min, max
	db 12, ABRA,	 	 19,  21
	db  8, KADABRA,	  	 19,  21
	db  8, JIGGLYPUFF, 	 19,  21
	db  8, HAUNTER, 	 19,  21
	db 30, MEOWTH,	 	 19,  21
	db 34, NOCTOWL, 	 19,  21
	db  0, RATTATA, 	 19,  21		
	end_grass_wildmons

	def_grass_wildmons ROUTE_9
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	;  %, species,		min, max
	db 25, SPEAROW, 	 16,  18
	db 25, FEAROW, 	  	 16,  18
	db 10, MAROWAK, 	 16,  18
	db 20, RATTATA, 	 16,  18
	db 20, RATICATE, 	 16,  18
	db  0, RATTATA, 	 16,  18
	db  0, RATTATA, 	 16,  18

	; day
	;  %, species,		min, max
	db 25, SPEAROW, 	 16,  18
	db 25, FEAROW, 	  	 16,  18
	db 10, MAROWAK, 	 16,  18
	db 20, RATTATA, 	 16,  18
	db 20, RATICATE, 	 16,  18
	db  0, RATTATA, 	 16,  18
	db  0, RATTATA, 	 16,  18

	; nite
	;  %, species,		min, max
	db 20, RATTATA, 	 16,  18
	db 20, RATICATE, 	 16,  18
	db 15, VENONAT, 	 16,  18
	db 15, VENOMOTH, 	 16,  18
	db 10, ZUBAT, 		 16,  18
	db  0, RATTATA, 	 16,  18
	db  0, RATTATA, 	 16,  18	
	end_grass_wildmons

	def_grass_wildmons ROUTE_10_NORTH
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	;  %, species,		min, max
	db 15, SPEAROW, 	 16,  18
	db 15, FEAROW, 	  	 16,  18
	db  5, MAROWAK, 	 16,  18
	db  5, ELECTABUZZ, 	 16,  18
	db 25, RATICATE, 	 16,  18
	db 35, VOLTORB, 	 16,  18
	db  0, RATTATA, 	 16,  18

	; day
	;  %, species,		min, max
	db 15, SPEAROW, 	 16,  18
	db 15, FEAROW, 	  	 16,  18
	db  5, MAROWAK, 	 16,  18
	db  5, ELECTABUZZ, 	 16,  18
	db 25, RATICATE, 	 16,  18
	db 35, VOLTORB, 	 16,  18
	db  0, RATTATA, 	 16,  18

	; nite
	;  %, species,		min, max
	db  5, ELECTABUZZ, 	 16,  18
	db 25, RATICATE, 	 16,  18
	db 35, VOLTORB, 	 16,  18
	db 15, VENONAT, 	 16,  18
	db 15, VENOMOTH, 	 16,  18
	db  5, ZUBAT, 		 16,  18
	db  0, RATTATA, 	  5,   5	
	end_grass_wildmons

	def_grass_wildmons ROUTE_11
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	;  %, species,		min, max
	db 20, HOPPIP, 		 16,  18
	db 10, PIDGEOTTO, 	 16,  18
	db  5, RATTATA, 	 16,  18
	db 40, RATICATE, 	 16,  18
	db 25, MAGNETON, 	 16,  18
	db  0, RATTATA, 	 16,  18
	db  0, RATTATA, 	 16,  18

	; day
	;  %, species,		min, max
	db 20, HOPPIP, 		 16,  18
	db 10, PIDGEOTTO, 	 16,  18
	db  5, RATTATA, 	 16,  18
	db 40, RATICATE, 	 16,  18
	db 25, MAGNETON, 	 16,  18
	db  0, RATTATA, 	 16,  18
	db  0, RATTATA, 	 16,  18

	; nite
	;  %, species,		min, max
	db 40, RATICATE, 	 16,  18
	db 25, MAGNETON, 	 16,  18
	db  5, HYPNO, 		 16,  18
	db 20, MEOWTH, 		 16,  18
	db 15, NOCTOWL, 	 16,  18
	db  0, RATTATA, 	 16,  18
	db  0, RATTATA, 	 16,  18	
	end_grass_wildmons

	def_grass_wildmons ROUTE_13
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	;  %, species,		min, max
	db 20, PIDGEOTTO, 	 23,  28
	db 25, HOPPIP, 	  	 23,  28
	db 25, NIDORINA, 	 23,  28
	db 25, NIDORINO, 	 23,  28
	db  5, CHANSEY, 	 23,  28
	db  0, RATTATA, 	 23,  28
	db  0, RATTATA, 	 23,  28

	; day
	;  %, species,		min, max
	db 20, PIDGEOTTO, 	 23,  28
	db 25, HOPPIP, 	  	 23,  28
	db 25, NIDORINA, 	 23,  28
	db 25, NIDORINO, 	 23,  28
	db  5, CHANSEY, 	 23,  28
	db  0, RATTATA, 	 23,  28
	db  0, RATTATA, 	 23,  28

	; nite
	;  %, species,		min, max
	db  5, CHANSEY, 	 23,  28
	db 30, VENOMOTH, 	 23,  28
	db 30, NOCTOWL, 	 23,  28
	db 50, QUAGSIRE, 	 23,  28
	db  0, RATTATA, 	 23,  28
	db  0, RATTATA, 	 23,  28
	db  0, RATTATA, 	 23,  28	
	end_grass_wildmons

	def_grass_wildmons ROUTE_14
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	;  %, species,		min, max
	db 20, SKIPLOOM, 	 23,  28
	db 25, HOPPIP, 	  	 23,  28
	db 25, NIDORINA, 	 23,  28
	db 25, NIDORINO, 	 23,  28
	db  5, CHANSEY, 	 23,  28
	db  0, RATTATA, 	 23,  28
	db  0, RATTATA, 	 23,  28

	; day
	;  %, species,		min, max
	db 10, PIDGEOTTO, 	 23,  28
	db 25, HOPPIP, 	  	 23,  28
	db 25, NIDORINA, 	 23,  28
	db 25, NIDORINO, 	 23,  28
	db  5, CHANSEY, 	 23,  28
	db 10, SKIPLOOM, 	 23,  28
	db  0, RATTATA, 	 23,  28

	; nite
	;  %, species,		min, max
	db  5, CHANSEY, 	 23,  28
	db 30, VENOMOTH, 	 23,  28
	db 30, NOCTOWL, 	 23,  28
	db 50, QUAGSIRE, 	 23,  28
	db  0, RATTATA, 	 23,  28
	db  0, RATTATA, 	 23,  28
	db  0, RATTATA, 	 23,  28	
	end_grass_wildmons

	def_grass_wildmons ROUTE_15
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	;  %, species,		min, max
	db 20, PIDGEOTTO, 	 23,  28
	db 25, HOPPIP, 	  	 23,  28
	db 25, NIDORINA, 	 23,  28
	db 25, NIDORINO, 	 23,  28
	db  5, CHANSEY, 	 23,  28
	db  0, RATTATA, 	 23,  28
	db  0, RATTATA, 	 23,  28

	; day
	;  %, species,		min, max
	db 20, PIDGEOTTO, 	 23,  28
	db 25, HOPPIP, 	  	 23,  28
	db 25, NIDORINA, 	 23,  28
	db 25, NIDORINO, 	 23,  28
	db  5, CHANSEY, 	 23,  28
	db  0, RATTATA, 	 23,  28
	db  0, RATTATA, 	 23,  28

	; nite
	;  %, species,		min, max
	db  5, CHANSEY, 	 23,  28
	db 30, VENOMOTH, 	 23,  28
	db 30, NOCTOWL, 	 23,  28
	db 50, QUAGSIRE, 	 23,  28
	db  0, RATTATA, 	 23,  28
	db  0, RATTATA, 	 23,  28
	db  0, RATTATA, 	 23,  28	
	end_grass_wildmons

	def_grass_wildmons ROUTE_16
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	;  %, species,		min, max
	db 45, FEAROW, 	  	 23,  28
	db 40, GRIMER, 	  	 23,  28
	db 15, MUK, 	   	 28,  30
	db  0, SLUGMA, 	  	 23,  28
	db  0, MURKROW, 	 23,  28
	db  0, RATTATA, 	 23,  28
	db  0, RATTATA, 	 23,  28

	; day
	;  %, species,		min, max
	db 40, FEAROW, 	  	 23,  28
	db 40, GRIMER, 	  	 23,  28
	db 15, MUK, 	   	 28,  30
	db  5, SLUGMA, 	  	 23,  28
	db  0, MURKROW, 	 23,  28
	db  0, RATTATA, 	 23,  28
	db  0, RATTATA, 	 23,  28

	; nite
	;  %, species,		min, max
	db  0, FEAROW, 	  	 23,  28
	db 70, GRIMER, 	  	 23,  28
	db 15, MUK, 	   	 28,  30
	db  0, SLUGMA, 	  	 23,  28
	db 15, MURKROW, 	 23,  28
	db  0, RATTATA, 	 23,  28
	db  0, RATTATA, 	 23,  28	
	end_grass_wildmons

	def_grass_wildmons ROUTE_17
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	;  %, species,		min, max
	db 45, FEAROW, 	  	 23,  28
	db 40, GRIMER, 	  	 23,  28
	db 15, MUK, 	   	 28,  30
	db  0, SLUGMA, 	  	 23,  28
	db  0, MURKROW, 	 23,  28
	db  0, RATTATA, 	 23,  28
	db  0, RATTATA, 	 23,  28

	; day
	;  %, species,		min, max
	db 40, FEAROW, 	  	 23,  28
	db 40, GRIMER, 	  	 23,  28
	db 15, MUK, 	   	 28,  30
	db  5, SLUGMA, 	  	 23,  28
	db  0, MURKROW, 	 23,  28
	db  0, RATTATA, 	 23,  28
	db  0, RATTATA, 	 23,  28

	; nite
	;  %, species,		min, max
	db  0, FEAROW, 	  	 23,  28
	db 70, GRIMER, 	  	 23,  28
	db 15, MUK, 	   	 28,  30
	db  0, SLUGMA, 	  	 23,  28
	db 15, MURKROW, 	 23,  28
	db  0, RATTATA, 	 23,  28
	db  0, RATTATA, 	 23,  28	
	end_grass_wildmons

	def_grass_wildmons ROUTE_18
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	;  %, species,		min, max
	db 45, FEAROW, 	  	 23,  28
	db 40, GRIMER, 	  	 23,  28
	db 15, MUK, 	   	 28,  30
	db  0, SLUGMA, 	  	 23,  28
	db  0, MURKROW, 	 23,  28
	db  0, RATTATA, 	 23,  28
	db  0, RATTATA, 	 23,  28

	; day
	;  %, species,		min, max
	db 40, FEAROW, 	  	 23,  28
	db 40, GRIMER, 	  	 23,  28
	db 15, MUK, 	   	 28,  30
	db  5, SLUGMA, 	  	 23,  28
	db  0, MURKROW, 	 23,  28
	db  0, RATTATA, 	 23,  28
	db  0, RATTATA, 	 23,  28

	; nite
	;  %, species,		min, max
	db  0, FEAROW, 	  	 23,  28
	db 70, GRIMER, 	  	 23,  28
	db 15, MUK, 	   	 28,  30
	db  0, SLUGMA, 	  	 23,  28
	db 15, MURKROW, 	 23,  28
	db  0, RATTATA, 	 23,  28
	db  0, RATTATA, 	 23,  28	
	end_grass_wildmons

	def_grass_wildmons ROUTE_21
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	;  %, species,		min, max
	db 10, MR__MIME, 	 30,  35
	db 50, TANGELA, 	 30,  35
	db 20, RATTATA, 	 30,  35
	db 20, RATICATE, 	 30,  35
	db  0, RATTATA, 	 30,  35
	db  0, RATTATA, 	 30,  35
	db  0, RATTATA, 	 30,  35

	; day
	;  %, species,		min, max
	db 10, MR__MIME, 	 30,  35
	db 50, TANGELA, 	 30,  35
	db 20, RATTATA, 	 30,  35
	db 20, RATICATE, 	 30,  35
	db  0, RATTATA, 	 30,  35
	db  0, RATTATA, 	 30,  35
	db  0, RATTATA, 	 30,  35

	; nite
	;  %, species,		min, max
	db  0, MR__MIME, 	 30,  35
	db 50, TANGELA, 	 30,  35
	db 30, RATTATA, 	 30,  35
	db 20, RATICATE, 	 30,  35
	db  0, RATTATA, 	 30,  35
	db  0, RATTATA, 	 30,  35
	db  0, RATTATA, 	 30,  35
	end_grass_wildmons

	def_grass_wildmons ROUTE_22
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	;  %, species,		min, max
	db 50, SPEAROW, 	  6,   8
	db  5, FEAROW, 	  	  6,   8
	db 15, DODUO, 	  	  6,   8
	db 10, PONYTA, 	  	  6,   8
	db 20, RATTATA, 	  6,   8
	db  0, POLIWAG, 	  6,   8
	db  0, RATTATA, 	  6,   8

	; day
	;  %, species,		min, max
	db 50, SPEAROW, 	  6,   8
	db  5, FEAROW, 	  	  6,   8
	db 15, DODUO, 	  	  6,   8
	db 10, PONYTA, 	  	  6,   8
	db 20, RATTATA, 	  6,   8
	db  0, POLIWAG, 	  6,   8
	db  0, RATTATA, 	  6,   8

	; nite
	;  %, species,		min, max
	db 80, RATTATA, 	  6,   8
	db 20, POLIWAG, 	  6,   8
	db  0, RATTATA, 	  5,   5
	db  0, RATTATA, 	  5,   5
	db  0, RATTATA, 	  5,   5
	db  0, RATTATA, 	  5,   5
	db  0, RATTATA, 	  5,   5	
	end_grass_wildmons

	def_grass_wildmons ROUTE_24
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	;  %, species,		min, max
	db 50, CATERPIE, 	 6,   8
	db 20, METAPOD, 	 8,   10
	db 10, BUTTERFREE, 	 10,  12
	db 10, ABRA, 	  	 12,  14
	db 10, BELLSPROUT, 	 10,  14
	db  0, RATTATA, 	  5,   5
	db  0, RATTATA, 	  5,   5

	; day
	;  %, species,		min, max
	db 50, CATERPIE, 	 6,   8
	db 10, ABRA, 	  	 12,  14
	db 10, BELLSPROUT, 	 10,  14
	db 30, SUNKERN, 	 12,  14
	db  0, RATTATA, 	  5,   5
	db  0, RATTATA, 	  5,   5
	db  0, RATTATA, 	  5,   5

	; nite
	;  %, species,		min, max
	db 10, ABRA, 	  	 12,  14
	db 10, BELLSPROUT, 	 10,  14
	db 50, ODDISH, 	 	 10,  14
	db 10, GLOOM, 	 	 14,  15
	db 20, VENONAT, 	 10,  14
	db  0, RATTATA, 	 10,  14
	db  0, RATTATA, 	 10,  14	
	end_grass_wildmons

	def_grass_wildmons ROUTE_25
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	;  %, species,		min, max
	db 40, CATERPIE, 	 6,   8
	db 20, METAPOD, 	 8,   10
	db 10, BUTTERFREE, 	 10,  12
	db 10, PIDGEOTTO,  	 12,  14
	db 10, PIDGEY, 	 	 10,  14
	db 10, BELLSPROUT, 	 10,  14
	db  0, RATTATA, 	  5,   5

	; day
	;  %, species,		min, max
	db 40, CATERPIE, 	 6,   8
	db 20, METAPOD, 	 8,   10
	db 10, BUTTERFREE, 	 10,  12
	db 10, PIDGEOTTO,  	 12,  14
	db 10, PIDGEY, 	 	 10,  14
	db 10, BELLSPROUT, 	 10,  14
	db  0, RATTATA, 	  5,   5

	; nite
	;  %, species,		min, max
	db 10, HOOTHOOT, 	 12,  14
	db 10, BELLSPROUT, 	 10,  14
	db 50, ODDISH, 	 	 10,  14
	db 10, NOCTOWL, 	 14,  15
	db 20, VENONAT, 	 10,  14
	db  0, RATTATA, 	 10,  14
	db  0, RATTATA, 	 10,  14	
	end_grass_wildmons

	def_grass_wildmons ROUTE_26
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	;  %, species,		min, max
	db 40, SANDSLASH, 	 28,  32
	db 10, ARBOK, 	  	 28,  32
	db 15, DODUO, 	  	 28,  32
	db 20, PONYTA, 	  	 28,  32
	db  5, CHARMANDER, 	  5,   5
	db  5, SQUIRTLE, 	  5,   5
	db  5, BULBASAUR, 	  5,   5

	; day
	;  %, species,		min, max
	db 40, SANDSLASH, 	 28,  32
	db 10, ARBOK, 	  	 28,  32
	db 15, DODUO, 	  	 28,  32
	db 20, PONYTA, 	  	 28,  32
	db  5, CHARMANDER, 	  5,   5
	db  5, SQUIRTLE, 	  5,   5
	db  5, BULBASAUR, 	  5,   5

	; nite
	;  %, species,		min, max
	db 40, NOCTOWL,	  	 28,  32
	db 30, QUAGSIRE,  	 28,  32
	db 15, RATICATE,  	 28,  32
	db  0, RATATA,  	  5,   5
	db  5, CHARMANDER, 	  5,   5
	db  5, SQUIRTLE, 	  5,   5
	db  5, BULBASAUR, 	  5,   5		
	end_grass_wildmons

	def_grass_wildmons ROUTE_27
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	;  %, species,		min, max
	db 45, SANDSLASH, 	 28,  32
	db 15, ARBOK, 	  	 28,  32
	db 15, DODUO, 	  	 28,  32
	db 10, PONYTA, 	  	 28,  32
	db  5, CYNDAQUIL, 	  5,   5
	db  5, TOTODILE, 	  5,   5
	db  5, CHIKORITA, 	  5,   5

	; day
	;  %, species,		min, max
	db 45, SANDSLASH, 	 28,  32
	db 15, ARBOK, 	  	 28,  32
	db 15, DODUO, 	  	 28,  32
	db 10, PONYTA, 	  	 28,  32
	db  5, CYNDAQUIL, 	  5,   5
	db  5, TOTODILE, 	  5,   5
	db  5, CHIKORITA, 	  5,   5

	; nite
	;  %, species,		min, max
	db 45, NOCTOWL, 	 28,  32
	db 25, QUAGSIRE, 	 28,  32
	db 15, RATICATE, 	 28,  32
	db  0, RATATA, 	  	  5,   5
	db  5, CYNDAQUIL, 	  5,   5
	db  5, TOTODILE, 	  5,   5
	db  5, CHIKORITA, 	  5,   5
	end_grass_wildmons

	def_grass_wildmons ROUTE_28
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	;  %, species,		min, max
	db 15, ARBOK, 	  	 41,  44
	db 20, RAPIDASH,  	 41,  44
	db 15, RAPIDASH, 	 41,  44
	db 15, DODUO, 	  	 41,  44
	db  5, DODRIO, 	  	 41,  44
	db 30, TANGELA, 	 41,  44
	db  0, RATTATA, 	 41,  44

	; day
	;  %, species,		min, max
	db 15, ARBOK, 	  	 41,  44
	db 20, PONYTA, 	  	 41,  44
	db 15, RAPIDASH, 	 41,  44
	db 15, DODUO, 	  	 41,  44
	db  5, DODRIO, 	  	 41,  44
	db 30, TANGELA, 	 41,  44
	db  0, RATTATA, 	 41,  44

	; nite
	;  %, species,		min, max
	db 30, TANGELA, 	 41,  44
	db 30, GOLBAT, 	 	 41,  44
	db 40, POLIWHIRL, 	 41,  44
	db  0, RATTATA, 	 41,  44
	db  0, RATTATA, 	 41,  44
	db  0, RATTATA, 	 41,  44
	db  0, RATTATA, 	 41,  44
	end_grass_wildmons

	db -1 ; end
