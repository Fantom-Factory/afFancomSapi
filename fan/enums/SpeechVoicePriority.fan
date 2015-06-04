
** Lists the possible Priority settings of an SpVoice object.
** 
** `http://msdn.microsoft.com/en-us/library/ee125221%28v=vs.85%29.aspx`
enum class SpeechVoicePriority {

	** The priority of a normal voice. Text streams spoken by a normal voice are added to the end 
	** of the voice queue. A voice with SVPNormal priority cannot interrupt another voice.
	** 
	** Value is 0 (0x0)
	SVPNormal,

	** The priority of an alert voice. Text streams spoken by an alert voice are inserted into the 
	** voice queue ahead of normal voice streams. An alert voice will interrupt a normal voice, 
	** which will resume speaking when the alert voice has finished speaking.
	** 
	** Value is 1 (0x1)
	SVPAlert,

	** The priority of an over voice. Text streams spoken by an over voice go into the voice queue 
	** ahead of normal and alert streams. An over voice will not interrupt, but speaks over (mixes 
	** with) the voices of lower priorities. 
	** 
	** Value is 2 (0x2)
	SVPOver;

}
