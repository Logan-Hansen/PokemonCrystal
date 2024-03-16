MACRO treemon_map
	map_id \1
	db \2 ; treemon set
ENDM
; can add new sets in constants/pokemon_data_constants.asm and
; in data/wild/treemons.asm
TreeMonMaps:
	treemon_map ROUTE_26,                  TREEMON_SET_KANTO
	treemon_map ROUTE_27,                  TREEMON_SET_KANTO
	treemon_map ROUTE_28,                  TREEMON_SET_CITY
	treemon_map ROUTE_29,                  TREEMON_SET_ROUTE
	treemon_map ROUTE_30,                  TREEMON_SET_ROUTE
	treemon_map ROUTE_31,                  TREEMON_SET_ROUTE
	treemon_map ROUTE_32,                  TREEMON_SET_KANTO
	treemon_map ROUTE_33,                  TREEMON_SET_TOWN
	treemon_map ROUTE_34,                  TREEMON_SET_ROUTE
	treemon_map ROUTE_35,                  TREEMON_SET_ROUTE
	treemon_map ROUTE_36,                  TREEMON_SET_ROUTE
	treemon_map ROUTE_37,                  TREEMON_SET_ROUTE
	treemon_map ROUTE_38,                  TREEMON_SET_ROUTE
	treemon_map ROUTE_39,                  TREEMON_SET_ROUTE
	treemon_map ROUTE_40,                  TREEMON_SET_CITY
	treemon_map ROUTE_41,                  TREEMON_SET_CITY
	treemon_map ROUTE_42,                  TREEMON_SET_TOWN
	treemon_map ROUTE_43,                  TREEMON_SET_LAKE
	treemon_map ROUTE_44,                  TREEMON_SET_CANYON
	treemon_map ROUTE_45,                  TREEMON_SET_CANYON
	treemon_map ROUTE_46,                  TREEMON_SET_CANYON
	treemon_map NEW_BARK_TOWN,             TREEMON_SET_CITY
	treemon_map CHERRYGROVE_CITY,          TREEMON_SET_CITY
	treemon_map VIOLET_CITY,               TREEMON_SET_CITY
	treemon_map AZALEA_TOWN,               TREEMON_SET_TOWN
	treemon_map CIANWOOD_CITY,             TREEMON_SET_CITY
	treemon_map GOLDENROD_CITY,            TREEMON_SET_CITY
	treemon_map OLIVINE_CITY,              TREEMON_SET_CITY
	treemon_map ECRUTEAK_CITY,             TREEMON_SET_CITY
	treemon_map MAHOGANY_TOWN,             TREEMON_SET_CITY
	treemon_map LAKE_OF_RAGE,              TREEMON_SET_LAKE
	treemon_map BLACKTHORN_CITY,           TREEMON_SET_CITY
	treemon_map SILVER_CAVE_OUTSIDE,       TREEMON_SET_CITY
	treemon_map ILEX_FOREST,               TREEMON_SET_FOREST
	treemon_map PALLET_TOWN,			   TREEMON_SET_CITY
	treemon_map VIRIDIAN_CITY,             TREEMON_SET_CITY
	treemon_map PEWTER_CITY,			   TREEMON_SET_CITY
	treemon_map CERULEAN_CITY,			   TREEMON_SET_CITY
	treemon_map VERMILION_CITY,			   TREEMON_SET_CITY
	treemon_map LAVENDER_TOWN,			   TREEMON_SET_CITY
	treemon_map CELADON_CITY,			   TREEMON_SET_CITY
	treemon_map FUCHSIA_CITY,			   TREEMON_SET_CITY
	treemon_map SAFFRON_CITY,			   TREEMON_SET_CITY
	treemon_map CINNABAR_ISLAND,		   TREEMON_SET_CITY
	treemon_map VIRIDIAN_FOREST,		   TREEMON_SET_KANTO
	treemon_map ROUTE_1,				   TREEMON_SET_KANTO
	treemon_map ROUTE_2,				   TREEMON_SET_KANTO
	treemon_map ROUTE_3,				   TREEMON_SET_KANTO
	treemon_map ROUTE_4,				   TREEMON_SET_KANTO
	treemon_map ROUTE_5,				   TREEMON_SET_KANTO
	treemon_map ROUTE_6,				   TREEMON_SET_KANTO
	treemon_map ROUTE_7,				   TREEMON_SET_KANTO
	treemon_map ROUTE_8,				   TREEMON_SET_KANTO
	treemon_map ROUTE_9,				   TREEMON_SET_KANTO
	treemon_map ROUTE_10NORTH,			   TREEMON_SET_KANTO
	treemon_map ROUTE_10SOUTh,			   TREEMON_SET_KANTO
	treemon_map ROUTE_11,			       TREEMON_SET_KANTO
	treemon_map ROUTE_12,				   TREEMON_SET_KANTO
	treemon_map ROUTE_13,				   TREEMON_SET_KANTO
	treemon_map ROUTE_14,				   TREEMON_SET_KANTO
	treemon_map ROUTE_15,				   TREEMON_SET_KANTO
	treemon_map ROUTE_16,				   TREEMON_SET_KANTO
	treemon_map ROUTE_17,				   TREEMON_SET_KANTO
	treemon_map ROUTE_18,				   TREEMON_SET_KANTO
	treemon_map ROUTE_19,				   TREEMON_SET_KANTO
	treemon_map ROUTE_20,				   TREEMON_SET_KANTO
	treemon_map ROUTE_21,				   TREEMON_SET_KANTO
	treemon_map ROUTE_22,				   TREEMON_SET_KANTO
	treemon_map ROUTE_23,				   TREEMON_SET_KANTO
	treemon_map ROUTE_24,				   TREEMON_SET_KANTO
	treemon_map ROUTE_25,				   TREEMON_SET_KANTO
	db -1

RockMonMaps:
	treemon_map CIANWOOD_CITY,             TREEMON_SET_ROCK
	treemon_map ROUTE_40,                  TREEMON_SET_ROCK
	treemon_map DARK_CAVE_VIOLET_ENTRANCE, TREEMON_SET_ROCK
	treemon_map SLOWPOKE_WELL_B1F,         TREEMON_SET_ROCK
	db -1
