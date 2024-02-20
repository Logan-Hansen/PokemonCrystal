; Pokémon swarms in grass

SwarmGrassWildMons:

; Dunsparce swarm
	map_id DARK_CAVE_VIOLET_ENTRANCE
	db 4 percent, 4 percent, 4 percent ; encounter rates: morn/day/nite
	; morn
	db 3, GEODUDE
	db 3, DUNSPARCE
	db 2, ZUBAT
	db 2, GEODUDE
	db 2, DUNSPARCE
	db 4, DUNSPARCE
	db 4, DUNSPARCE
	; day
	db 3, GEODUDE
	db 3, DUNSPARCE
	db 2, ZUBAT
	db 2, GEODUDE
	db 2, DUNSPARCE
	db 4, DUNSPARCE
	db 4, DUNSPARCE
	; nite
	db 3, GEODUDE
	db 3, DUNSPARCE
	db 2, ZUBAT
	db 2, GEODUDE
	db 2, DUNSPARCE
	db 4, DUNSPARCE
	db 4, DUNSPARCE

; Yanma swarm
	map_id ROUTE_35
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 12, NIDORAN_M
	db 12, NIDORAN_F
	db 12, YANMA
	db 14, YANMA
	db 14, PIDGEY
	db 10, DITTO
	db 10, DITTO
	; day
	db 12, NIDORAN_M
	db 12, NIDORAN_F
	db 12, YANMA
	db 14, YANMA
	db 14, PIDGEY
	db 10, DITTO
	db 10, DITTO
	; nite
	db 12, NIDORAN_M
	db 12, NIDORAN_F
	db 12, YANMA
	db 14, YANMA
	db 14, HOOTHOOT
	db 10, DITTO
	db 10, DITTO

	db -1 ; end

; Vulpix swarm
	map_id ROUTE_37
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 13, LEDYBA
	db 14, VULPIX
	db 15, PIDGEY
	db 16, VULPIX
	db 15, PIDGEOTTO
	db 15, VULPIX
	db 15, LEDIAN
	; day
	db 13, PIDGEY
	db 14, VULPIX
	db 15, PIDGEY
	db 16, VULPIX
	db 15, PIDGEOTTO
	db 15, VULPIX
	db 15, PIDGEY
	; nite
	db 13, SPINARAK
	db 14, VULPIX
	db 15, HOOTHOOT
	db 16, VULPIX
	db 15, NOCTOWL
	db 15, VULPIX
	db 15, ARIADOS


; Starter swarm
	map_id ROUTE_46
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db  5, CHIKORITA
	db  5, BULBASAUR
	db  5, TOTODILE
	db  5, SQUIRTLE
	db  5, CYNDAQUIL
	db  5, CHARMANDER
	db  5, OMANYTE
	; day
	db  5, CYNDAQUIL
	db  5, CHARMANDER
	db  5, CHIKORITA
	db  5, BULBASAUR
	db  5, TOTODILE
	db  5, SQUIRTLE
	db  5, AERODACTYL
	; nite
	db  5, TOTODILE
	db  5, SQUIRTLE
	db  5, CYNDAQUIL
	db  5, CHARMANDER
	db  5, CHIKORITA
	db  5, BULBASAUR
	db  5, KABUTO