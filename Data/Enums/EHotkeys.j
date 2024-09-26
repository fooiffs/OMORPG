scope EHotkeys
  struct EHotkeys
    static method H2I takes string s returns integer
      if ( s == "0" ) then
        return $30
      elseif ( s == "1" ) then
        return $31
      elseif ( s == "2" ) then
        return $32
      elseif ( s == "3" ) then
        return $33
      elseif ( s == "4" ) then
        return $34
      elseif ( s == "5" ) then
        return $35
      elseif ( s == "6" ) then
        return $36
      elseif ( s == "7" ) then
        return $37
      elseif ( s == "8" ) then
        return $38
      elseif ( s == "9" ) then
        return $39
      elseif ( s == "n0" ) then
        return $60
      elseif ( s == "n1" ) then
        return $61
      elseif ( s == "n2" ) then
        return $62
      elseif ( s == "n3" ) then
        return $63
      elseif ( s == "n4" ) then
        return $64
      elseif ( s == "n5" ) then
        return $65
      elseif ( s == "n6" ) then
        return $66
      elseif ( s == "n7" ) then
        return $67
      elseif ( s == "n8" ) then
        return $68
      elseif ( s == "n9" ) then
        return $69
    /*      elseif ( s == "A" ) then
        return $41 기본단축키 */
      elseif ( s == "B" ) then
        return $42
      elseif ( s == "C" ) then
        return $43
      elseif ( s == "D" ) then
        return $44
      elseif ( s == "E" ) then
        return $45
      elseif ( s == "F" ) then
        return $46
      elseif ( s == "G" ) then
        return $47
      elseif ( s == "H" ) then
        return $48
      elseif ( s == "I" ) then
        return $49
      elseif ( s == "J" ) then
        return $4A
      elseif ( s == "K" ) then
        return $4B
      elseif ( s == "L" ) then
        return $4C
      elseif ( s == "M" ) then
        return $4D
      elseif ( s == "N" ) then
        return $4E
      elseif ( s == "O" ) then
        return $4F
    /*          elseif ( s == "P" ) then
        return $50 기본단축키 */
      elseif ( s == "Q" ) then
        return $51
      elseif ( s == "R" ) then
        return $52
      elseif ( s == "S" ) then
        return $53
      elseif ( s == "T" ) then
        return $54
      elseif ( s == "U" ) then
        return $55
      elseif ( s == "V" ) then
        return $56
      elseif ( s == "W" ) then
        return $57
      elseif ( s == "X" ) then
        return $58
      elseif ( s == "Y" ) then
        return $59
      elseif ( s == "Z" ) then
        return $5A
      elseif ( s == "F1" ) then
        return $70
      elseif ( s == "F2" ) then
        return $71
      elseif ( s == "F3" ) then
        return $72
      elseif ( s == "F4" ) then
        return $73
      elseif ( s == "F5" ) then
        return $74
      elseif ( s == "F6" ) then
        return $75
      elseif ( s == "F7" ) then
        return $76
      elseif ( s == "F8" ) then
        return $77
      elseif ( s == "TAB" ) then
        return $09
      elseif ( s == "CAP" ) then
        return $14
      elseif ( s == "SFT" ) then
        return $10
      elseif ( s == "CTR" ) then
        return $11
      elseif ( s == "ALT" ) then
        return $12
      elseif ( s == "SPC" ) then
        return $20
      elseif ( s == "n/" ) then
        return $6F
      elseif ( s == "n*" ) then
        return $6A
      elseif ( s == "n-" ) then
        return $6D
      elseif ( s == "n+" ) then
        return $6B
      elseif ( s == "n." ) then
        return $6E
      elseif ( s == "｀" ) then
        return $C0
      elseif ( s == "-" ) then
        return $BD
      elseif ( s == "=" ) then
        return $BB
      elseif ( s == "\\" ) then
        return $DC
      elseif ( s == "←" ) then
        return $08
      elseif ( s == "[" ) then
        return $DB
      elseif ( s == "]" ) then
        return $DD
      elseif ( s == ";" ) then
        return $BA
      elseif ( s == "'" ) then
        return $DE
      elseif ( s == "," ) then
        return $BC
      elseif ( s == "." ) then
        return $BE
      elseif ( s == "/" ) then
        return $BF
      elseif ( s == "sft" ) then
        return $A1
      elseif ( s == "alt" ) then
        return $A5
      elseif ( s == "ctr" ) then
        return $A3
      else
        return 0
      endif
    endmethod
    static method I2H takes integer iKey returns string
      if ( iKey == $30 ) then
        return "0"
      elseif ( iKey == $31 ) then
        return "1"
      elseif ( iKey == $32 ) then
        return "2"
      elseif ( iKey == $33 ) then
        return "3"
      elseif ( iKey == $34 ) then
        return "4"
      elseif ( iKey == $35 ) then
        return "5"
      elseif ( iKey == $36 ) then
        return "6"
      elseif ( iKey == $37 ) then
        return "7"
      elseif ( iKey == $38 ) then
        return "8"
      elseif ( iKey == $39 ) then
        return "9"
      elseif ( iKey == $60 ) then
        return "n0"
      elseif ( iKey == $61 ) then
        return "n1"
      elseif ( iKey == $62 ) then
        return "n2"
      elseif ( iKey == $63 ) then
        return "n3"
      elseif ( iKey == $64 ) then
        return "n4"
      elseif ( iKey == $65 ) then
        return "n5"
      elseif ( iKey == $66 ) then
        return "n6"
      elseif ( iKey == $67 ) then
        return "n7"
      elseif ( iKey == $68 ) then
        return "n8"
      elseif ( iKey == $69 ) then
        return "n9"
    /*      elseif ( iKey == $41
        return "A" 기본단축키 */
      elseif ( iKey == $42 ) then
        return "B"
      elseif ( iKey == $43 ) then
        return "C"
      elseif ( iKey == $44 ) then
        return "D"
      elseif ( iKey == $45 ) then
        return "E"
      elseif ( iKey == $46 ) then
        return "F"
      elseif ( iKey == $47 ) then
        return "G"
      elseif ( iKey == $48 ) then
        return "H"
      elseif ( iKey == $49 ) then
        return "I"
      elseif ( iKey == $4A ) then
        return "J"
      elseif ( iKey == $4B ) then
        return "K"
      elseif ( iKey == $4C ) then
        return "L"
      elseif ( iKey == $4D ) then
        return "M"
      elseif ( iKey == $4E ) then
        return "N"
      elseif ( iKey == $4F ) then
        return "O"
    /*      elseif ( iKey == $50 
            return "P" 기본단축키 */
      elseif ( iKey == $51 ) then
        return "Q"
      elseif ( iKey == $52 ) then
        return "R"
      elseif ( iKey == $53 ) then
        return "S"
      elseif ( iKey == $54 ) then
        return "T"
      elseif ( iKey == $55 ) then
        return "U"
      elseif ( iKey == $56 ) then
        return "V"
      elseif ( iKey == $57 ) then
        return "W"
      elseif ( iKey == $58 ) then
        return "X"
      elseif ( iKey == $59 ) then
        return "Y"
      elseif ( iKey == $5A ) then
        return "Z"
      elseif ( iKey == $70 ) then
        return "F1"
      elseif ( iKey == $71 ) then
        return "F2"
      elseif ( iKey == $72 ) then
        return "F3"
      elseif ( iKey == $73 ) then
        return "F4"
      elseif ( iKey == $74 ) then
        return "F5"
      elseif ( iKey == $75 ) then
        return "F6"
      elseif ( iKey == $76 ) then
        return "F7"
      elseif ( iKey == $77 ) then
        return "F8"
      elseif ( iKey == $09 ) then
        return "TAB"
      elseif ( iKey == $14 ) then
        return "CAP"
      elseif ( iKey == $10 ) then
        return "SFT"
      elseif ( iKey == $11 ) then
        return "CTR"
      elseif ( iKey == $12 ) then
        return "ALT"
      elseif ( iKey == $20 ) then
        return "SPC"
      elseif ( iKey == $6F ) then
        return "n/"
      elseif ( iKey == $6A ) then
        return "n*"
      elseif ( iKey == $6D ) then
        return "n-"
      elseif ( iKey == $6B ) then
        return "n+"
      elseif ( iKey == $6E ) then
        return "n."
      elseif ( iKey == $C0 ) then
        return "｀"
      elseif ( iKey == $BD ) then
        return "-"
      elseif ( iKey == $BB ) then
        return "="
      elseif ( iKey == $DC ) then
        return "\\"
      elseif ( iKey == $08 ) then
        return "←"
      elseif ( iKey == $DB ) then
        return "["
      elseif ( iKey == $DD ) then
        return "]"
      elseif ( iKey == $BA ) then
        return ";"
      elseif ( iKey == $DE ) then
        return "'"
      elseif ( iKey == $BC ) then
        return ","
      elseif ( iKey == $BE ) then
        return "."
      elseif ( iKey == $BF ) then
        return "/"
      elseif ( iKey == $A1 ) then
        return "sft"
      elseif ( iKey == $A5 ) then
        return "alt"
      elseif ( iKey == $A3 ) then
        return "ctr"
      else
        return ""
      endif
    endmethod
  endstruct
endscope