scope ESkillData
  struct ECharacterName
    static constant integer ICHIGO  = 0
    static constant integer RUKIA   = 1
    static constant integer URYU    = 2
    static constant integer ORIHIME = 3
    static constant integer RENJI   = 4
    static constant integer SADO    = 5
  endstruct
  struct ESkillClass
    static constant integer BASE_ACTIVE        = 0
    static constant integer CORE_ACTIVE        = 1
    static constant integer CORE_ULTIMATE      = 2
    static constant integer TRANSFORM          = 3
    static constant integer BASE_PASSIVE       = 4
  endstruct
  struct ESkillSubClass
    static constant integer AVOID	              = 	1	/*  회피 */
    static constant integer DASH	              = 	2	/*  보법 */
    static constant integer JUMP	              = 	3	/*  점프 */
    static constant integer CUT_OF_HORIZONTAL	  = 	4	/*  횡베기 */
    static constant integer CUT_OF_VERTICAL	    = 	5	/*  종베기 */
    static constant integer PIERCE	            = 	6	/*  찌르기 */
    static constant integer SPECIAL_BEAM	      = 	7	/*  빔 */
    static constant integer DEMON_ARTS	        = 	8	/*  귀도 */
    static constant integer SWORD_DANCE	        = 	9	/*  검무 */
    static constant integer CONTROL_ENVIRONMENT = 	10	/*  온도제어 */
    static constant integer SILVER_TIN	        = 	11	/*  은통 */
    static constant integer COMBAT	            = 	12	/*  전투 */
    static constant integer SPIRITUAL_WEAPON	  = 	13	/*  영자병장 */
    static constant integer MELEE_ATTACK	      = 	14	/*  공격 */
    static constant integer UPGRADE_TRANSFORM	  = 	15	/*  변신강화 */
    static constant integer SINGLE	            = 	16	/*  꽃 */
    static constant integer COMBINE	            = 	17	/*  조합사용 */
    static constant integer AURA	              = 	18	/*  지속스킬 */
    static constant integer SWORD_MANSHIP	      = 	19	/*  참술 */
    static constant integer CLOSE_COMBAT	      = 	20	/*  백타 */
    static constant integer STRENGTH	          = 	21	/*  스킬강화 */
    static constant integer STRENGTH_PECULIARITY= 	22	/*  특성강화 */
    static constant integer MARTIAL_ARTS	      = 	23	/*  주먹 */
    static constant integer SEISMIC_STRIKES	    = 	24	/*  대지강타 */
    static constant integer DEFENSE	            = 	25	/*  방어 */
    static constant integer TRANSFORM	          = 	26	/*  변신 */
  endstruct
  struct ESkillMethod
    static constant integer MOVING              = 0	 /* 이동기 */
    static constant integer INCHANT             = 1	 /* 강화버프 */
    static constant integer FIRE_AND_LAUNCH     = 2	 /* 사출기 */
    static constant integer SWITCH_AURA         = 3	 /* 스위치오라 */
    static constant integer RUSH                = 4	 /* 돌진기 */
    static constant integer PERMANENT           = 5	 /* 영구지속 */
    static constant integer TARGETING           = 6	 /* 타겟팅 */
    static constant integer NEAR_RANGE          = 7	 /* 주변범위 */
  endstruct
  struct ESkillTypeUI
    static constant integer UN_CLICKABLE	            = 1	 /* 클릭불가 */
    static constant integer IMMEDIATELY	              = 2	 /* 즉발 */
    static constant integer SOLO_TARGET	              = 3	 /* 대상 */
    static constant integer LOCATION_WITH_DIRECTION	  = 4	 /* 지점-방향	*/
    static constant integer LOCATION_WITH_POSITION	  = 5	 /* 지점-위치	*/
  endstruct
endscope

