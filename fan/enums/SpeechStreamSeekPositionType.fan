
** Lists the types of positioning from which a Seek method can be performed.
** 
** `http://msdn.microsoft.com/en-us/library/ee125215%28v=vs.85%29.aspx`
enum class SpeechStreamSeekPositionType {

	** Calculates the stream offset relative from the start of the stream.
	** 
	** Value is 0 (0x0)
	SSSPTRelativeToStart,

	** Calculates the stream offset relative from the current position.
	** 
	** Value is 1 (0x1)
	SSSPTRelativeToCurrentPosition,

	** Calculates the stream offset relative from the end of the stream.
	** 
	** Value is 2 (0x2)
	SSSPTRelativeToEnd;

}
