
** lists the options for retaining data from an audio stream.
** 
** `http://msdn.microsoft.com/en-us/library/ee125209%28v=vs.85%29.aspx`
enum class SpeechRetainedAudioOptions {

	** Indicates that the audio should not be retained, but discarded after use.
	** 
	** Value is 0 (0x0)
	SRAONone,

	** Flag indicates that the audio stream should be retained (e.g., serialization of recognition 
	** object, playback of recognized audio, etc.).
	** 
	** Value is 1 (0x1)
	SRAORetainAudio;

}
