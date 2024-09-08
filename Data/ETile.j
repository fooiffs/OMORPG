// [출처] 워크래프트 내의 모든 타일셋 id (워크래프트3 리포지드 유즈맵 포럼 [W3UMF]) | 작성자 동동주
// Tile.SUMMER_DIRT_ROUGH 같은 방법으로 사용할 수 있습니다.
// 푸잎 - 안쓰는 타일은 굳이 저장할 필요 없지만 바이트단위로 먹으니 그냥 리스트로 남겨둠.
library ETile
  struct ETile
    static constant integer BLIGHT = -1 /* 커스텀 사용 */
    
    // Lordaeron Summer 로데론 여름
    static constant integer SUMMER_DIRT = 'Ldrt'
    static constant integer SUMMER_DIRT_ROUGH = 'Ldro'
    static constant integer SUMMER_DIRT_GRASSY = 'Ldrg'
    static constant integer SUMMER_ROCK = 'Lrok'
    static constant integer SUMMER_GRASS = 'Lgrs'
    static constant integer SUMMER_GRASS_DARK = 'Lgrd'
    
    // Lordaeron Fall 로데론 가을
    static constant integer FALL_DIRT = 'Fdrt'
    static constant integer FALL_DIRT_ROUGH = 'Fdro'
    static constant integer FALL_DIRT_GRASSY = 'Fdrg'
    static constant integer FALL_ROCK = 'Frok'
    static constant integer FALL_GRASS = 'Fgrs'
    static constant integer FALL_GRASS_DARK = 'Fgrd'
    
    // Lordaeron Winter 로데론 겨울
    static constant integer WINTER_DIRT = 'Wdrt'
    static constant integer WINTER_DIRT_ROUGH = 'Wdro'
    static constant integer WINTER_SNOW_GRASSY = 'Wsng'
    static constant integer WINTER_ROCK = 'Wrok'
    static constant integer WINTER_GRASS = 'Wgrs'
    static constant integer WINTER_SNOW = 'Wsnw'
    
    // Barrens
    static constant integer BARRENS_DIRT = 'Bdrt'
    static constant integer BARRENS_DIRT_ROUGH = 'Bdrh'
    static constant integer BARRENS_DIRT_GRASSY = 'Bdrg'
    static constant integer BARRENS_PEBBLES = 'Bdrr'
    static constant integer BARRENS_ROCK = 'Bflr'
    static constant integer BARRENS_GRASS = 'Bgrr'
    static constant integer BARRENS_DESERT = 'Bdsr'
    static constant integer BARRENS_DESERT_DARK = 'Bdsd'
    
    // Ashenvale
    static constant integer ASHEN_DIRT = 'Adrt'
    static constant integer ASHEN_DIRT_ROUGH = 'Adrd'
    static constant integer ASHEN_DIRT_GRASSY = 'Adrg'
    static constant integer ASHEN_ROCK = 'Arck'
    static constant integer ASHEN_GRASS = 'Agrs'
    static constant integer ASHEN_GRASS_LUMPY = 'Agrd'
    static constant integer ASHEN_VINES = 'Avin'
    static constant integer ASHEN_LEAVES = 'Alvd'
    
    // Felwood
    static constant integer FELWOOD_DIRT = 'Cdrt'
    static constant integer FELWOOD_DIRT_ROUGH = 'Cdrd'
    static constant integer FELWOOD_ROCK = 'Crck'
    static constant integer FELWOOD_GRASS = 'Cgrs'
    static constant integer FELWOOD_POISON = 'Cpos'
    static constant integer FELWOOD_VINES = 'Cvin'
    static constant integer FELWOOD_LEAVES = 'Clvg'
    
    // Northrend
    static constant integer NORTH_DIRT = 'Ndrt'
    static constant integer NORTH_DIRT_DARK = 'Ndrd'
    static constant integer NORTH_ROCK = 'Nrck'
    static constant integer NORTH_GRASS = 'Ngrs'
    static constant integer NORTH_ICE = 'Nice'
    static constant integer NORTH_SNOW = 'Nsnw'
    static constant integer NORTH_SNOW_ROCKY = 'Nsnr'
    
    // Cityscape 도시 풍경
    static constant integer CITY_DIRT = 'Ydrt'
    static constant integer CITY_DIRT_ROUGH = 'Ydtr'
    static constant integer CITY_MARBLE_BLACK = 'Yblm'
    static constant integer CITY_MARBLE_WHITE = 'Ywmb'
    static constant integer CITY_BRICK = 'Ybtl'
    static constant integer CITY_TILE_SQUARE = 'Ysqd'
    static constant integer CITY_TILE_ROUND = 'Yrtl'
    static constant integer CITY_GRASS = 'Ygsb'
    static constant integer CITY_GRASS_TRIM = 'Yhdg'
    
    // Village 마을
    static constant integer VILLAGE_DIRT = 'Vdrt'
    static constant integer VILLAGE_DIRT_ROUGH = 'Vdrr'
    static constant integer VILLAGE_CROP = 'Vcrp'
    static constant integer VILLAGE_PATH_COBBLE = 'Vcbp'
    static constant integer VILLAGE_PATH_STONE = 'Vstp'
    static constant integer VILLAGE_ROCK = 'Vrck'
    static constant integer VILLAGE_GRASS_SHORT = 'Vgrs'
    static constant integer VILLAGE_GRASS_THICK = 'Vgrt'
    
    // Village Fall 마을-가을
    static constant integer VFALL_DIRT = 'Qdrt'
    static constant integer VFALL_DIRT_ROUGH = 'Qdrr'
    static constant integer VFALL_CROP = 'Qcrp'
    static constant integer VFALL_PATH_COBBLE = 'Qcbp'
    static constant integer VFALL_PATH_STONE = 'Qstp'
    static constant integer VFALL_ROCK = 'Qrck'
    static constant integer VFALL_GRASS_SHORT = 'Qgrs'
    static constant integer VFALL_GRASS_THICK = 'Qgrt'
    
    // Dalaran
    static constant integer DALARAN_DIRT = 'Xdrt'
    static constant integer DALARAN_DIRT_ROUGH = 'Xdtr'
    static constant integer DALARAN_MARBLE_BLACK = 'Xblm'
    static constant integer DALARAN_MARBLE_WHITE = 'Xwmb'
    static constant integer DALARAN_TILE_BRICK = 'Xbtl'
    static constant integer DALARAN_TILE_SQUARE = 'Xsqd'
    static constant integer DALARAN_TILE_ROUND = 'Xrtl'
    static constant integer DALARAN_GRASS = 'Xgsb'
    static constant integer DALARAN_GRASS_TRIM = 'Xhdg'
    
    // Dungeon
    static constant integer DUNGEON_DIRT = 'Ddrt'
    static constant integer DUNGEON_BRICK = 'Dbrk'
    static constant integer DUNGEON_STONE_RED = 'Drds'
    static constant integer DUNGEON_ROCK_DARK = 'Ddkr'
    static constant integer DUNGEON_STONE_GRAY = 'Dgrs'
    static constant integer DUNGEON_LAVA = 'Dlav'
    static constant integer DUNGEON_LAVA_CRACK = 'Dlvc'
    static constant integer DUNGEON_TILE_SQUARE = 'Dsqd'
    
    // Underground 지하
    static constant integer UNDER_DIRT = 'Gdrt'
    static constant integer UNDER_BRICK = 'Gbrk'
    static constant integer UNDER_STONE_RED = 'Grds'
    static constant integer UNDER_ROCK_DARK = 'Gdkr'
    static constant integer UNDER_STONE_GRAY = 'Ggrs'
    static constant integer UNDER_LAVA = 'Glav'
    static constant integer UNDER_LAVA_CRACK = 'Glvc'
    static constant integer UNDER_TILE_SQUARE = 'Gsqd'
    
    // Sunken Ruins 파묻힌 폐허
    static constant integer SUNKEN_DIRT = 'Zdrt'
    static constant integer SUNKEN_DIRT_ROUGH = 'Zdtr'
    static constant integer SUNKEN_DIRT_GRASSY = 'Zdrg'
    static constant integer SUNKEN_BRICK_SMALL = 'Zbks'
    static constant integer SUNKEN_BRICK_LARGE = 'Zbkl'
    static constant integer SUNKEN_SAND = 'Zsan'
    static constant integer SUNKEN_TILE_ROUND = 'Ztil'
    static constant integer SUNKEN_GRASS = 'Zgrs'
    static constant integer SUNKEN_GRASS_DARK = 'Zvin'
    
    // Icecrown Glacier 아이스크라운 빙하
    static constant integer GLACIER_DIRT = 'Idrt'
    static constant integer GLACIER_DIRT_ROUGH = 'Idtr'
    static constant integer GLACIER_ICE_DARK = 'Idki'
    static constant integer GLACIER_ICE = 'Iice'
    static constant integer GLACIER_BRICK_BLACK = 'Ibkb'
    static constant integer GLACIER_BRICK_RUNE = 'Irbk'
    static constant integer GLACIER_BRICK_TILE = 'Itbk'
    static constant integer GLACIER_SQUARE_BLACK = 'Ibsq'
    static constant integer GLACIER_SNOW = 'Isnw'
    
    // Outland
    static constant integer OUTLAND_DIRT = 'Odrt'
    static constant integer OUTLAND_DIRT_ROUGH = 'Osmb'
    static constant integer OUTLAND_DIRT_LIGHT = 'Odtr'
    static constant integer OUTLAND_DIRT_CRACK = 'Ofst'
    static constant integer OUTLAND_STONE_FLAT = 'Olgb'
    static constant integer OUTLAND_ROCK = 'Orok'
    static constant integer OUTLAND_STONE_LIGHT = 'Ofsl'
    static constant integer OUTLAND_ABYSS = 'Oaby'
    
    // Black Citadel
    static constant integer CITADEL_DIRT = 'Kdrt'
    static constant integer CITADEL_DIRT_LIGHT = 'Kfsl'
    static constant integer CITADEL_DIRT_ROUGH = 'Kdtr'
    static constant integer CITADEL_STONE_FLAT = 'Kfst'
    static constant integer CITADEL_BRICK_SMALL = 'Ksmb'
    static constant integer CITADEL_BRICK_LARGE = 'Klgb'
    static constant integer CITADEL_TILE_SQUARE = 'Ksqt'
    static constant integer CITADEL_TILE_DARK = 'Kdkt'
    
    // Dalaran Ruins 달다란 폐허
    static constant integer RUIN_DIRT = 'Jdrt'
    static constant integer RUIN_DIRT_ROUGH = 'Jdtr'
    static constant integer RUIN_MARBLE_BLACK = 'Jblm'
    static constant integer RUIN_MARBLE_WHITE = 'Jwmb'
    static constant integer RUIN_TILE_BRICK = 'Jbtl'
    static constant integer RUIN_TILE_SQUARE = 'Jsqd'
    static constant integer RUIN_TILE_ROUND = 'Jrtl'
    static constant integer RUIN_GRASS = 'Jgsb'
    static constant integer RUIN_GRASS_TRIM = 'Jhdg'
    
    // Cliffs
    static constant integer CLIFF_ASHEN_DIRT = 'cAc2'
    static constant integer CLIFF_ASHEN_GRASS = 'cAc1'
    static constant integer CLIFF_BARRENS_DESERT = 'cBc2'
    static constant integer CLIFF_BARRENS_GRASS = 'cBc1'
    static constant integer CLIFF_CITADEL_DIRT = 'cKc1'
    static constant integer CLIFF_CITADEL_TILE = 'cKc2'
    static constant integer CLIFF_CITY_DIRT = 'cYc2'
    static constant integer CLIFF_CITY_TILE = 'cYc1'
    static constant integer CLIFF_DALARAN_DIRT = 'cXc2'
    static constant integer CLIFF_DALARAN_TILE = 'cXc1'
    static constant integer CLIFF_RUIN_DIRT = 'cJc2'
    static constant integer CLIFF_RUIN_TILE = 'cJc1'
    static constant integer CLIFF_DUNGEON_DIRT = 'cDc2'
    static constant integer CLIFF_DUNGEON_TILE = 'cDc1'
    static constant integer CLIFF_FELWOOD_DIRT = 'cCc2'
    static constant integer CLIFF_FELWOOD_GRASS = 'cCc1'
    static constant integer CLIFF_GLACIER_TILE = 'cIc2'
    static constant integer CLIFF_GLACIER_SNOW = 'cIc1'
    static constant integer CLIFF_FALL_DIRT = 'cFc2'
    static constant integer CLIFF_FALL_GRASS = 'cFc1'
    static constant integer CLIFF_SUMMER_DIRT = 'cLc2'
    static constant integer CLIFF_SUMMER_GRASS = 'cLc1'
    static constant integer CLIFF_WINTER_GRASS = 'cWc2'
    static constant integer CLIFF_WINTER_SNOW = 'cWc1'
    static constant integer CLIFF_NORTH_DIRT = 'cNc2'
    static constant integer CLIFF_NORTH_SNOW = 'cNc1'
    static constant integer CLIFF_OUTLAND_ABYSS = 'cOc1'
    static constant integer CLIFF_OUTLAND_DIRT = 'cOc2'
    static constant integer CLIFF_SUNKEN_DIRT = 'cZc2'
    static constant integer CLIFF_SUNKEN_TILE = 'cZc1'
    static constant integer CLIFF_UNDER_DIRT = 'cGc2'
    static constant integer CLIFF_UNDER_TILE = 'cGc1'
    static constant integer CLIFF_VILLAGE_DIRT = 'cVc2'
    static constant integer CLIFF_VILLAGE_GRASS = 'cVc1'
    static constant integer CLIFF_VFALL_DIRT = 'cQc2'
    static constant integer CLIFF_VFALL_GRASS = 'cQc1'
  endstruct
endlibrary