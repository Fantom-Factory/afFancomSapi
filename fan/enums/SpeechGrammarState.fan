using afFancom::Variant

** Lists the possible states of a speech grammar.
** 
** `http://msdn.microsoft.com/en-us/library/ee125199%28v=vs.85%29.aspx`
enum class SpeechGrammarState {

	** SGSDisabled indicates that the grammar cannot receive recognitions and that its rules are 
	** inactive. Rules can still be added to a grammar in this state.
	** 
	** Value is 0 (0x0)
	SGSDisabled(0),

	** SGSEnabled indicates that the grammar can receive recognitions and that its rules are 
	** active. This is the default speech grammar state.
	** 
	** Value is 1 (0x1)
	SGSEnabled(1),

	** SGSExclusive indicates that this grammar is the only active grammar and disables all rules 
	** that are not part of this grammar. 
	** 
	** **Currently not implemented.** 
	** 
	** Value is 3 (0x3)
	SGSExclusive(3);


	const Int value

	private new make(Int value) {
		this.value = value
	}


	// ---- Variant Surrogate Methods -------------------------------------------------------------
	
	static SpeechGrammarState fromVariant(Variant variant) {
		varVal := variant.asInt
		return SpeechGrammarState.vals.find { 
			it.value == varVal
		} ?: throw Err("Could not find SpeechGrammarState with value '$varVal'")
	}
	
	Variant toFancom() {
		Variant(value)
	}

}
