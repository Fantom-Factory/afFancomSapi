using afFancom::Flag
using afFancom::Variant

** Lists the running states of a TTS voice.
** 
** `http://msdn.microsoft.com/en-us/library/ee125212%28v=vs.85%29.aspx`
enum class SpeechRunState {

	** The voice has finished rendering all queued phrases.
	** 
	** Value is 1 (0x1)
	SRSEDone(1),

	** The SpVoice currently claims the audio queue.
	** 
	** Value is 2 (0x2)
	SRSEIsSpeaking(2);


	const Int value

	private new make(Int value) {
		this.value = value
	}


	// ---- Variant Surrogate Methods -------------------------------------------------------------

	static SpeechRunState fromVariant(Variant variant) {
		varVal := variant.asInt
		return SpeechRunState.vals.find {
			it.value == varVal
		} ?: throw Err("Could not find SpeechRunState with value '$varVal'")
	}

	Variant toFancom() {
		Variant(value)
	}
}
