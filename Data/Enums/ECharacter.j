scope ECharacter
  struct ECharacter
    // { '이치고': 1, '루키아': 2, '우류': 3, '렌지': 4, '오리히메': 5, '사도': 6 },
    public static constant integer ICHIGO = 1
    public static constant integer RUKIA = 2
    public static constant integer URYU = 3
    public static constant integer ORIHIME = 4
    public static constant integer RENJI = 5
    public static constant integer SADO = 6
    
    static method U2I takes unit u returns integer
      if ( u == gg_unit_H000_0011 ) then
        return 1
      elseif ( u == gg_unit_H001_0010 ) then
        return 2
      elseif ( u == gg_unit_H002_0009 ) then
        return 3
      elseif ( u == gg_unit_H003_0008 ) then
        return 4
      elseif ( u == gg_unit_H005_0003 ) then
        return 5
      elseif ( u == gg_unit_H004_0007 ) then
        return 6
      else
        return 0
      endif
    endmethod
    static method UT2I takes integer unitTypeId returns integer
      if ( unitTypeId == 'H000' ) then
        return 1
      elseif ( unitTypeId == 'H001' ) then
        return 2
      elseif ( unitTypeId == 'H002' ) then
        return 3
      elseif ( unitTypeId == 'H003' ) then
        return 4
      elseif ( unitTypeId == 'H005' ) then
        return 5
      elseif ( unitTypeId == 'H004' ) then
        return 6
      else
        return 0
      endif
    endmethod
  endstruct

  
endscope