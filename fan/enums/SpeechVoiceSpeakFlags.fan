using afFancom::Flag
using afFancom::Variant

** Lists flags that control the SpVoice.Speak method.
** 
** `http://msdn.microsoft.com/en-us/library/ee125223%28v=vs.85%29.aspx` 
@Serializable
const class SpeechVoiceSpeakFlags : Flag {

	** This mask has every unused bit set.
	** 
	** Value is -512 (0xFFFFFFFFFFFFFE00)
	static const SpeechVoiceSpeakFlags SVSFUnusedFlags := SpeechVoiceSpeakFlags(-512, "SVSFUnusedFlags")

	** Specifies that the default settings should be used. The defaults are:
	**  - To speak the given text string synchronously (override with SVSFlagsAsync),
	**  - To parse the text as XML only if the first character is a left-angle-bracket (override 
	**    with SVSFIsXML or SVSFIsNotXML),
	**  - Not to persist global XML state changes across speak calls (override with SVSFPersistXML),
	**  - Not to expand punctuation characters into words (override with SVSFNLPSpeakPunc).
	** 
	** Value is 0 (0x0)
	static const SpeechVoiceSpeakFlags SVSFDefault := SpeechVoiceSpeakFlags(0, "SVSFDefault")

	** Value is 0 (0x0)
	static const SpeechVoiceSpeakFlags SVSFParseAutodetect := SpeechVoiceSpeakFlags(0, "SVSFParseAutodetect")

	** Specifies that the Speak call should be asynchronous. That is, it will return immediately 
	** after the speak request is queued.
	** 
	** Value is 1 (0x1)
	static const SpeechVoiceSpeakFlags SVSFlagsAsync := SpeechVoiceSpeakFlags(1, "SVSFlagsAsync")

	** Purges all pending speak requests prior to this speak call.
	** 
	** Value is 2 (0x2)
	static const SpeechVoiceSpeakFlags SVSFPurgeBeforeSpeak := SpeechVoiceSpeakFlags(2, "SVSFPurgeBeforeSpeak")

	** The string passed to the Speak method is a file name rather than text. As a result, the 
	** string itself is not spoken but rather the file the path that points to is spoken.
	** 
	** Value is 4 (0x4)
	static const SpeechVoiceSpeakFlags SVSFIsFilename := SpeechVoiceSpeakFlags(4, "SVSFIsFilename")

	** The input text will be parsed for XML markup.
	** 
	** Value is 8 (0x8)
	static const SpeechVoiceSpeakFlags SVSFIsXML := SpeechVoiceSpeakFlags(8, "SVSFIsXML")

	** The input text will not be parsed for XML markup.
	** 
	** Value is 16 (0x10)
	static const SpeechVoiceSpeakFlags SVSFIsNotXML := SpeechVoiceSpeakFlags(16, "SVSFIsNotXML")

	** Global state changes in the XML markup will persist across speak calls.
	** 
	** Value is 32 (0x20)
	static const SpeechVoiceSpeakFlags SVSFPersistXML := SpeechVoiceSpeakFlags(32, "SVSFPersistXML")

	** Punctuation characters should be expanded into words (e.g. "This is it." would become "This 
	** is it period").
	** 
	** Value is 64 (0x40)
	static const SpeechVoiceSpeakFlags SVSFNLPSpeakPunc := SpeechVoiceSpeakFlags(64, "SVSFNLPSpeakPunc")

	** Flags handled by SAPI (as opposed to the text-to-speech engine) are set in this mask.
	** 
	** Value is 64 (0x40)
	static const SpeechVoiceSpeakFlags SVSFNLPMask := SpeechVoiceSpeakFlags(64, "SVSFNLPMask")

	** Force XML parsing as MS SAPI.
	** 
	** Value is 128 (0x80)
	static const SpeechVoiceSpeakFlags SVSFParseSapi := SpeechVoiceSpeakFlags(128, "SVSFParseSapi")

	** Force XML parsing as W3C SSML.
	** 
	** Value is 256 (0x100)
	static const SpeechVoiceSpeakFlags SVSFParseSsml := SpeechVoiceSpeakFlags(256, "SVSFParseSsml")

	** SVSFParseSapi|SVSFParseSsml
	** 
	** Value is 384 (0x180)
	static const SpeechVoiceSpeakFlags SVSFParseMask := SpeechVoiceSpeakFlags(384, "SVSFParseMask")

	** This is an existing SAPI 5.1 mask that has every flag bit set. In 5.3, it has been extended 
	** to contain SVSFParseMask.
	** 
	** Value is 511 (0x1FF)
	static const SpeechVoiceSpeakFlags SVSFVoiceMask := SpeechVoiceSpeakFlags(511, "SVSFVoiceMask")


	new make(|This|? f := null) : super(f) { }
	new makeFromVariant(Variant variant) : super(variant) { }
	new makeFromDefinition(Int flag, Str? name := null) : super(flag, name) { }

}
