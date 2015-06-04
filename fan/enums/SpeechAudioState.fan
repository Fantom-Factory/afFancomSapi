
** Lists the four possible audio input and output states.
** 
** `http://msdn.microsoft.com/en-us/library/ee125190%28v=vs.85%29.aspx`
enum class SpeechAudioState {

	** Audio is stopped and closed. For multimedia audio input devices (sound cards etc.), the 
	** device will be released. It can be opened by other processes and potentially made 
	** unavailable to SAPI.
	**
	** Value is 0 (0x0)
	SASClosed,

	** Audio is stopped. For multimedia audio input devices (sound cards etc.), the audio device 
	** will not be closed. This guarantees that SAPI can restart it without an intervening process 
	** opening it.
	**
	** Value is 1 (0x1)
	SASStop,

	** Audio is paused. Staying in this state for too long a period will cause audio loss.
	**
	** Value is 2 (0x2)
	SASPause,

	** Audio is enabled. 
	**
	** Value is 3 (0x3)
	SASRun;

}
