// JNStopwatch.j
native JNStopwatchCreate takes nothing returns integer
native JNStopwatchStart takes integer id returns nothing
native JNStopwatchReset takes integer id returns nothing
native JNStopwatchElapsedMinute takes integer id returns integer
native JNStopwatchElapsedHour takes integer id returns integer

// JAPIItemState.j
native EXGetItemDataString takes integer itemcode, integer data_type returns string

// JNCommon.j
native JNWriteLog takes string str returns nothing

// JNString.j
native JNStringInsert takes string str, integer index, string val returns string
native JNStringPos takes string str, string sub returns integer
native JNStringContains takes string str, string sub returns boolean
native JNStringSplit takes string str, string sub, integer index returns string
native JNStringReplace takes string str, string old, string newstr returns string
native JNStringLength takes string str returns integer
native JNStringSub takes string str, integer start, integer length returns string
native JNStringCount takes string str, string sub returns integer

// JAPIEffect.j
native EXEffectMatRotateZ takes effect e, real angle returns nothing
native EXSetEffectSize takes effect e, real size returns nothing