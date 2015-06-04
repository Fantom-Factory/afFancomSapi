using afFancom::Variant

** Lists the states of a speech grammar rule.
** 
** `http://msdn.microsoft.com/en-us/library/ee125211%28v=vs.85%29.aspx`
enum class SpeechRuleState {

	** Grammar rule is inactive.
	** Value is 0 (0x0)
	SGDSInactive(0),

	** Grammar rule is active.
	** Value is 1 (0x1)
	SGDSActive(1),

	** SR engine will be placed in a paused state when the grammar rule is recognised.
	** Value is 3 (0x3)
	SGDSActiveWithAutoPause(3),

	** Indicates that the audio will start when the user starts speaking, and will end when the 
	** user stops speaking. 
	** Value is 4 (0x4)
	SGDSActiveUserDelimited(4);


	const Int value

	private new make(Int value) {
		this.value = value
	}


	// ---- Variant Surrogate Methods -------------------------------------------------------------

	static SpeechRuleState fromVariant(Variant variant) {
		varVal := variant.asInt
		return SpeechRuleState.vals.find {
			it.value == varVal
		} ?: throw Err("Could not find SpeechRuleState with value '$varVal'")
	}

	Variant toFancom() {
		Variant(value)
	}

}
