using afFancom::Flag
using afFancom::Variant

** Lists speech recognition (SR) events.
** 
** `http://msdn.microsoft.com/en-us/library/ee125206%28v=vs.85%29.aspx`
@Serializable
const class SpeechRecoEvents : Flag {

	** SR engine has reached the end of an input stream.
	** 
	** Value is 1 (0x1)
	static const SpeechRecoEvents SREStreamEnd := SpeechRecoEvents(1, "SREStreamEnd")

	** SR engine has detected the start of non-trivial audio data.
	** 
	** Value is 2 (0x2)
	static const SpeechRecoEvents SRESoundStart := SpeechRecoEvents(2, "SRESoundStart")

	** SR engine has detected the end of non-trivial audio data.
	** 
	** Value is 4 (0x4)
	static const SpeechRecoEvents SRESoundEnd := SpeechRecoEvents(4, "SRESoundEnd")

	** SR engine has detected the start of a recognizable phrase.
	** 
	** Value is 8 (0x8)
	static const SpeechRecoEvents SREPhraseStart := SpeechRecoEvents(8, "SREPhraseStart")

	** SR engine's best hypothesis for the audio data.
	** 
	** Value is 16 (0x10)
	static const SpeechRecoEvents SRERecognition := SpeechRecoEvents(16, "SRERecognition")

	** SR engine's interim hypothesis for the result of the audio data.
	** 
	** Value is 32 (0x20)
	static const SpeechRecoEvents SREHypothesis := SpeechRecoEvents(32, "SREHypothesis")

	** SR engine has reached the specified point in the audio stream.
	** 
	** Value is 64 (0x40)
	static const SpeechRecoEvents SREBookmark := SpeechRecoEvents(64, "SREBookmark")

	** LPARAM points to a string WPARAM that is the attribute value.
	** 
	** Value is 128 (0x80)
	static const SpeechRecoEvents SREPropertyNumChange := SpeechRecoEvents(128, "SREPropertyNumChange")

	** LPARAM pointer to a buffer. Two concatenated null-terminated strings.
	** 
	** Value is 256 (0x100)
	static const SpeechRecoEvents SREPropertyStringChange := SpeechRecoEvents(256, "SREPropertyStringChange")

	** Apparent speech with no valid recognition.
	** 
	** Value is 512 (0x200)
	static const SpeechRecoEvents SREFalseRecognition := SpeechRecoEvents(512, "SREFalseRecognition")

	** LPARAM is any combination of SpeechInterference flags.
	** 
	** Value is 1024 (0x400)
	static const SpeechRecoEvents SREInterference := SpeechRecoEvents(1024, "SREInterference")

	** LPARAM is string.
	** 
	** Value is 2048 (0x800)
	static const SpeechRecoEvents SRERequestUI := SpeechRecoEvents(2048, "SRERequestUI")

	** WPARAM contains new recognition state.
	** 
	** Value is 4096 (0x1000)
	static const SpeechRecoEvents SREStateChange := SpeechRecoEvents(4096, "SREStateChange")

	** The adaptation buffer is now ready to be accepted.
	** 
	** Value is 8192 (0x2000)
	static const SpeechRecoEvents SREAdaptation := SpeechRecoEvents(8192, "SREAdaptation")

	** SR engine has reached the start of an input stream.
	** 
	** Value is 16384 (0x4000)
	static const SpeechRecoEvents SREStreamStart := SpeechRecoEvents(16384, "SREStreamStart")

	** Phrase finished and recognized but for other context.
	** 
	** Value is 32768 (0x8000)
	static const SpeechRecoEvents SRERecoOtherContext := SpeechRecoEvents(32768, "SRERecoOtherContext")

	** Input audio volume level
	** 
	** Value is 65536 (0x10000)
	static const SpeechRecoEvents SREAudioLevel := SpeechRecoEvents(65536, "SREAudioLevel")

	** Private engine-specific event.
	** 
	** Value is 262144 (0x40000)
	static const SpeechRecoEvents SREPrivate := SpeechRecoEvents(262144, "SREPrivate")

	** All events listed above. 
	** 
	** Value is 393215 (0x5FFFF)
	static const SpeechRecoEvents SREAllEvents := SpeechRecoEvents(393215, "SREAllEvents")


	new make(|This|? f := null) : super(f) { }
	new makeFromVariant(Variant variant) : super(variant) { }
	new makeFromDefinition(Int flag, Str? name := null) : super(flag, name) { }

}
