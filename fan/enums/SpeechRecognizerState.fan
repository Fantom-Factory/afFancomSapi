
** Lists the states of a Recognizer object. 
** 
** `http://msdn.microsoft.com/en-us/library/ee125208%28v=vs.85%29.aspx`
enum class SpeechRecognizerState {

	** The engine and audio input are inactive and no audio is being read, even if there are rules 
	** active. The audio device will be closed in this state.
	** 
	** Value is 0 (0x0)
	SRSInactive,

	** Recognition takes place if there are any active rules. If a rule is active, audio will be 
	** read and passed to the SR engine and recognition will take place.
	** 
	** Value is 1 (0x1)
	SRSActive,

	** Indicates the audio is running regardless of the rule state. Even if there are no active 
	** rules, audio will still be read and passed to the engine.
	** 
	** Value is 2 (0x2)
	SRSActiveAlways,

	** Indicates the engine state is set to inactive and all active audio data is purged. This 
	** state is used when an application wishes to shut an engine down as quickly as possible, 
	** without waiting for it to finish processing any audio data that is currently buffered. 
	** 
	** Value is 3 (0x3)
	SRSInactiveWithPurge;

}
