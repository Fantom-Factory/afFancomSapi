using afFancom::Flag
using afFancom::Variant

** Lists the change state of a word/pronunciation combination in a lexicon.
** 
** `http://msdn.microsoft.com/en-us/library/ee125225%28v=vs.85%29.aspx` 
enum class SpeechWordType {

	** Indicates that the word has been added to the lexicon.
	** 
	** Value is 1 (0x1)
	SWTAdded(1),

	** Indicates that the word has been deleted from the lexicon.
	** 
	** Value is 2 (0x2)
	SWTDeleted(2);


	const Int value

	private new make(Int value) {
		this.value = value
	}
	

	// ---- Variant Surrogate Methods -------------------------------------------------------------

	static SpeechWordType fromVariant(Variant variant) {
		varVal := variant.asInt
		return SpeechWordType.vals.find {
			it.value == varVal
		} ?: throw Err("Could not find SpeechWordType with value '$varVal'")
	}

	Variant toFancom() {
		Variant(value)
	}
}
