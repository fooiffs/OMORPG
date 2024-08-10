scope ESkillClass
  struct ESkillClass
    static constant integer BASE_ACTIVE = 0
    static constant integer CORE_ACTIVE = 1
    static constant integer CORE_ULTIMATE = 2
    static constant integer TRANSFORM = 3
    static constant integer BASE_PASSIVE = 4
  endstruct
endscope

scope ESkillSubClass
  struct ESkillSubClass
    static constant string EVADE              = "회피"
    static constant string DASH               = "대쉬"
    static constant string JUMP               = "점프"

    static constant string CUT_OF_HORIZONTAL  = "횡베기"
    static constant string CUT_OF_VERTICAL    = "종베기"
    static constant string PIERCE             = "찌르기"
    static constant string SPECIAL_BEAM       = "빔"

    static constant string DEMON_ARTS         = "귀도"
    static constant string SWORD_DANCE        = "검무"
    static constant string CONTROL_ENVIRONMENT= "환경제어"

    static constant string SILVER_TIN         = "보조(은통)"
    static constant string COMBAT             = "전투"
    static constant string SPIRITUAL_WEAPON   = "영자병장"

    static constant string UPGRADE_TRANSFORM  = "변신 강화"
    static constant string SINGLE             = "기본 사용"
    static constant string COMBINE            = "콤보 스킬"
    static constant string AURA               = "지속 스킬"

    static constant string SWORD_MANSHIP      = "참술"
    static constant string CLOSE_COMBAT       = "백타"
    static constant string STRENGTH           = "스킬 강화"

    static constant string MARTIAL_ARTS       = "권법"
    static constant string SEISMIC_STRIKES    = "대지강타"
    static constant string DEFENSE            = "방어"
    
    static constant string TRANSFORM_ICHIGO   = "변신(이치고)"
    static constant string TRANSFORM_RUKIA    = "변신(루키아)"
    static constant string TRANSFORM_URYU     = "변신(우류)"
    static constant string TRANSFORM_ORIHIME  = "변신(오리히메)"
    static constant string TRANSFORM_RENJI    = "변신(렌지)"
    static constant string TRANSFORM_SADO     = "변신(사도)"
  endstruct
endscope