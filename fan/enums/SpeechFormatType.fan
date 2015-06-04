
** Requests either the input format for the original audio source, or the format that actually arrives at the speech engine.
** 
** `http://msdn.microsoft.com/en-us/library/ee125197%28v=vs.85%29.aspx`
enum class SpeechFormatType {

	** Request the format of the original audio input.
	** 
	** Value is 0 (0x0)
	SFTInput,

	** Request the format received by the SR engine.
	** 
	** Value is 1 (0x1)
	SFTSREngine;

}
