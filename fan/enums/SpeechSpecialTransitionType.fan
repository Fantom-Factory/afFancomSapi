using afFancom::Variant

** Lists special transitions for the speech recognition engine.
** 
** `http://msdn.microsoft.com/en-us/library/ee125213%28v=vs.85%29.aspx`
enum class SpeechSpecialTransitionType {

	** Indicates there should be a wildcard transition. SGRSTTWildcard is a special transition and 
	** may not be supported by all engines. This indicates a transition that matches any word or 
	** words. The engine does not try to recognize the spoken words. The engine includes the string 
	** value WildcardInCFG as an attribute in its object token to inform the application that it is 
	** capable of supporting this.
	** 
	** Value is 1 (0x1)
	SSTTWildcard(1),

	** Indicates there should be a dictation transition. SGRSTTDictation is a special transition 
	** and may not be supported by all engines. This is used to embed dictation within a 
	** context-free grammar (CFG). Each transition means one word should be recognized.
	** 
	** Value is 2 (0x2)
	SSTTDictation(2),

	** Indicates there should be a text buffer transition. SGRSTTTextBuffer is a special transition 
	** and may not be supported by all engines. This indicates that the engine is to recognize a 
	** sub-string of words from the text-buffer, if it has been set. 
	** 
	** Value is 3 (0x3)
	SSTTTextBuffer(3);


	const Int value

	private new make(Int value) {
		this.value = value
	}
	

	// ---- Variant Surrogate Methods -------------------------------------------------------------

	static SpeechSpecialTransitionType fromVariant(Variant variant) {
		varVal := variant.asInt
		return SpeechSpecialTransitionType.vals.find {
			it.value == varVal
		} ?: throw Err("Could not find SpeechSpecialTransitionType with value '$varVal'")
	}

	Variant toFancom() {
		Variant(value)
	}
}
