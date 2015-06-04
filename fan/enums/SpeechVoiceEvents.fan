using afFancom::Flag
using afFancom::Variant

** Lists the types of events which a text-to-speech (TTS) engine can send to an SpVoice object.
** 
** `http://msdn.microsoft.com/en-us/library/ee125220%28v=vs.85%29.aspx`
@Serializable
const class SpeechVoiceEvents : Flag {

	** Represents the StartStream event, which occurs when the engine begins speaking a stream.
	** 
	** Value is 2 (0x2)
	static const SpeechVoiceEvents SVEStartInputStream := SpeechVoiceEvents(2, "SVEStartInputStream")

	** Represents the EndStream event, which occurs when the engine encounters the end of a stream while speaking.
	** 
	** Value is 4 (0x4)
	static const SpeechVoiceEvents SVEEndInputStream := SpeechVoiceEvents(4, "SVEEndInputStream")

	** Represents the VoiceChange event, which occurs when the engine encounters a change of Voice while speaking.
	** 
	** Value is 8 (0x8)
	static const SpeechVoiceEvents SVEVoiceChange := SpeechVoiceEvents(8, "SVEVoiceChange")

	** Represents the Bookmark event, which occurs when the engine encounters a bookmark while speaking.
	** 
	** Value is 16 (0x10)
	static const SpeechVoiceEvents SVEBookmark := SpeechVoiceEvents(16, "SVEBookmark")

	** Represents the WordBoundary event, which occurs when the engine completes a word while speaking.
	** 
	** Value is 32 (0x20)
	static const SpeechVoiceEvents SVEWordBoundary := SpeechVoiceEvents(32, "SVEWordBoundary")

	** Represents the Phoneme event, which occurs when the engine completes a phoneme while speaking.
	** 
	** Value is 64 (0x40)
	static const SpeechVoiceEvents SVEPhoneme := SpeechVoiceEvents(64, "SVEPhoneme")

	** Represents the SentenceBoundary event, which occurs when the engine completes a sentence while speaking.
	** 
	** Value is 128 (0x80)
	static const SpeechVoiceEvents SVESentenceBoundary := SpeechVoiceEvents(128, "SVESentenceBoundary")

	** Represents the Viseme event, which occurs when the engine completes a viseme while speaking.
	** 
	** Value is 256 (0x100)
	static const SpeechVoiceEvents SVEViseme := SpeechVoiceEvents(256, "SVEViseme")

	** Represents the AudioLevel event, which occurs when the engine has completed an audio level change while speaking.
	** 
	** Value is 512 (0x200)
	static const SpeechVoiceEvents SVEAudioLevel := SpeechVoiceEvents(512, "SVEAudioLevel")

	** Represents a private engine event.
	** 
	** Value is 32768 (0x8000)
	static const SpeechVoiceEvents SVEPrivate := SpeechVoiceEvents(32768, "SVEPrivate")

	** Represents all speech voice events. 
	** 
	** Value is 33790 (0x83FE)
	static const SpeechVoiceEvents SVEAllEvents := SpeechVoiceEvents(33790, "SVEAllEvents")


	new make(|This|? f := null) : super(f) { }
	new makeFromVariant(Variant variant) : super(variant) { }
	new makeFromDefinition(Int flag, Str? name := null) : super(flag, name) { }

}
