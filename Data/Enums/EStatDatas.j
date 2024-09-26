scope EStatDatas
  struct EStatType
    // 용어 설명
      // 평타 공격 : 일반, 투사체 두종류
        // 일반   (Normal)
        // 투사체 (Missile)
      // 능력 : 기술과 주술 능력 총칭.
        // 기술 (Physical): 신체/물리 기반
        // 마법 (Magical) : 에너지/마법 기반. 주술을 포함함.
          // 주술 (Mystic): 상태 이상 기반 (CC, 데미지는 없음)
      // 데미지 타입
        // 근접  (Melee)  : 평타-일반, 능력-기술 기반 데미지
        // 원격 (Ranged)  : 평타-투사체, 능력-마법 기반 데미지
      
      // 접미사 정의
        // 확률  (Percent)  : add-분자이며, 30 기준 130/100 = x1.3 (+30%) 의미
        // 감소   (Reduce)  : add-분모이며, 30 기준 100/130 = /1.3 (-24%) 의미
        // 기회   (Chance)  : set-분자이며, 30 기준  30/100 = x0.3 (=30%) 의미
        // 증폭 (Multiplier): 확률과 같으나, 총 '값'을 한번 더 증폭시킴.
          // 치명타에 5% 증폭 : 치명타 데미지 105% (치명타 확률이 5% 늘지 않음)
          // 체력회복에 5% 증폭 : 체력 회복량 105% (최대 체력의 5% 회복이 아님)

    // 메인스텟 3종
    static constant integer MainPower             = 1  // 메인-파워 : 일반 공격력, 치명타 증폭, 기술/마법 데미지 증폭, 마법 기본 데미지
    static constant integer MainFocus             = 2  // 메인-집중 : 일반 공속, 치명타 기회, 기술/마법 쿨탐 가속, 시전 가속
    static constant integer MainVitality          = 3  // 메인-활력 : 체력/마나 최대치, 체력/마나 회복량, 근접/원격 방어

    // 평타 관련
    static constant integer AttackPower           = 4  // 일반 공격력
    static constant integer AttackSpeedPercent    = 5  // 공격속도(%) *0% 0.0/s
    static constant integer CriticalChance        = 6  // 치명타 기회(고정%)
    static constant integer CriticalMultiplier    = 7  // 치명타(데미지) 증폭(%)
    static constant integer LifeSteal             = 8  // 흡혈 고정값
    static constant integer LifeStealPercent      = 9  // 흡혈 체력비례값

    // 방어 관련
    static constant integer MeleeDefense          = 10 // 근접 방어
    static constant integer MeleeReduce           = 11 // 근접 피해 감소(-%)
    static constant integer MeleeEvationChance    = 12 // 근접 차단(고정%)
    static constant integer RangedDefense         = 13 // 원격 방어
    static constant integer RangedReduce          = 14 // 원격 피해 감소(-%)
    static constant integer RangeImmuneChance     = 15 // 원격 차단(고정%)
    static constant integer MysticReduce          = 16 // 주술 지속 감소(-%)
    static constant integer MysticDispellChance   = 17 // 주술 차단(고정%)

    // 이동, 체력 관련
    static constant integer MovementSpeedPercent  = 18 // 이동속도(%) *+0%, 000
    static constant integer HpRegenPerSecond      = 19 // 체력 회복 (초당)
    static constant integer HpRegenMultiplier     = 20 // 체력 회복 증폭(%)
    static constant integer MpRegenPerSecond      = 21 // 마나 회복 (초당)
    static constant integer MpRegenMultiplier     = 22 // 마나 회복 증폭(%)

    // 능력 기반
    static constant integer PhysicalMultiplier    = 23 // 기술 (데미지) 증폭(%)
    static constant integer PhysicalCooldownReduce= 24 // 기술 가속(-%)
    static constant integer MagicalPower          = 25 // 마법 기본 데미지
    static constant integer MagicalMultiplier     = 26 // 마법 (데미지) 증폭(%)
    static constant integer MagicalCooldownReduce = 27 // 마법 가속(-%)
    static constant integer MagicalCastingReduce  = 28 // 마법 시전 가속(-%)
    static constant integer AilibtyLevelAdd       = 29 // 모든 능력 레벨
    
    // 특수, 확률 관련
    static constant integer GoldDropMultiplier    = 30 // 골드 드랍률 증폭(%)
    static constant integer ItemDropMultiplier    = 31 // 아이템 드랍률 증폭(%)
    static constant integer ExperienceMultiplier  = 32 // 경험치 획득률 증폭(%)
  endstruct
endscope