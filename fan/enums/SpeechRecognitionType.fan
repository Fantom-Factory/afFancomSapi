using afFancom::Flag
using afFancom::Variant

** Lists the types of speech recognition.
** 
** `http://msdn.microsoft.com/en-us/library/ee125207%28v=vs.85%29.aspx`
@Serializable
const class SpeechRecognitionType : Flag {

	** Indicates that the recognition result was produced by standard recognition.
	** 
	** Value is 0 (0x0)
	static const SpeechRecognitionType SRTStandard := SpeechRecognitionType(0, "SRTStandard")

	** Indicates that the recognition result was produced by standard recognition and that the 
	** engine is paused.
	** 
	** Value is 1 (0x1)
	static const SpeechRecognitionType SRTAutopause := SpeechRecognitionType(1, "SRTAutopause")

	** Indicates that the recognition result was produced by recognition emulation.
	** 
	** Value is 2 (0x2)
	static const SpeechRecognitionType SRTEmulated := SpeechRecognitionType(2, "SRTEmulated")

	** Indicates that there was a timeout generating the SML and hence no SML will be returned.
	** 
	** Value is 4 (0x4) - Note the docs give this a value of 3 (0x3)
	static const SpeechRecognitionType SRTSMLTimeout := SpeechRecognitionType(4, "SRTSMLTimeout")

	** The user said something that was a valid path through the grammar, but it is possible they 
	** could be about to say something else. For example, if the grammar contains "play the ace" 
	** and "play the ace of spades" and the user says "play the ace", this flag is set.
	** 
	** Value is 8 (0x8) - Note the docs give this a value of 4 (0x4)
	static const SpeechRecognitionType SRTExtendableParse := SpeechRecognitionType(8, "SRTExtendableParse")

	** *TODO* SRTReSent does.... 
	** 
	** Value is 16 (0x10) - Note the docs give this a value of 5 (0x5)
	static const SpeechRecognitionType SRTReSent := SpeechRecognitionType(16, "SRTReSent")


	new make(|This|? f := null) : super(f) { }
	new makeFromVariant(Variant variant) : super(variant) { }
	new makeFromDefinition(Int flag, Str? name := null) : super(flag, name) { }

}
