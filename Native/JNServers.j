native JNUse takes nothing returns boolean
native JNObjectCharacterResetCharacter takes string UserId returns nothing
native JNObjectCharacterSetInt takes string UserId, string Field, integer value returns nothing
native JNObjectCharacterSetString takes string UserId, string Field, string value returns nothing
native JNObjectCharacterSave takes string MapId, string UserId, string SecretKey, string Character returns string

native JNObjectCharacterGetInt takes string UserId, string Field returns integer
native JNObjectCharacterGetString takes string UserId, string Field returns string
native JNObjectCharacterInit takes string MapId, string UserId, string SecretKey, string Character returns integer
native JNServerTime takes string Format returns string

native JNObjectCharacterServerConnectCheck takes nothing returns boolean
native JNObjectCharacterRemoveField takes string UserId, string Field returns nothing