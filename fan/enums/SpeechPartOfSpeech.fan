using afFancom::Variant

** Lists the parts-of-speech categories used in SAPI.
** 
** `http://msdn.microsoft.com/en-us/library/ee125204%28v=vs.85%29.aspx`
enum class SpeechPartOfSpeech {

	** Indicates that the part of speech already present in the lexicon should not be overridden.
	** 
	** Value is -1 (0xFFFFFFFFFFFFFFFF)
	SPSNotOverriden(-1),

	** Indicates that the part of speech is unknown and is probably from the user lexicon.
	** 
	** Value is 0 (0x0)
	SPSUnknown(0),

	** Indicates that the part of speech is a noun.
	** 
	** Value is 4096 (0x1000)
	SPSNoun(4096),

	** Indicates that the part of speech is a verb.
	** 
	** Value is 8192 (0x2000)
	SPSVerb(8192),

	** Indicates that the part of speech is a modifier.
	** 
	** Value is 12288 (0x3000)
	SPSModifier(12288),

	** Indicates that the part of speech is a function.
	** 
	** Value is 16384 (0x4000)
	SPSFunction(16384),

	** Indicates that the part of speech is an interjection.
	** 
	** Value is 20480 (0x5000)
	SPSInterjection(20480),

	** Value is 28672 (0x7000)
	SPSLMA(28672),

	** Marks works in the user lexicon as not to be recognized. Essentially, this removes words from the vocabulary.
	** 
	** Value is 61440 (0xF000)
	SPSSuppressWord(61440);


	const Int value

	private new make(Int value) {
		this.value = value
	}


	// ---- Variant Surrogate Methods -------------------------------------------------------------
	
	static SpeechPartOfSpeech fromVariant(Variant variant) {
		varVal := variant.asInt
		return SpeechPartOfSpeech.vals.find { 
			it.value == varVal
		} ?: throw Err("Could not find SpeechPartOfSpeech with value '$varVal'")
	}
	
	Variant toFancom() {
		Variant(value)
	}
}
