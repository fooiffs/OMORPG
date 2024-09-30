native EXGetAbilityDataInteger takes ability abil, integer level, integer data_type returns integer
native EXSetAbilityDataInteger takes ability abil, integer level, integer data_type, integer id returns boolean
native EXSetAbilityDataReal takes ability abil, integer level, integer data_type, real value returns boolean
native EXGetUnitAbility takes unit u, integer abilcode returns ability
native EXSetAbilityDataString takes ability abil, integer level, integer data_type, string value returns boolean