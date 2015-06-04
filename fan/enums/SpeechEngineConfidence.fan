using afFancom::Variant

** Specifies levels of confidence.
** 
** `http://msdn.microsoft.com/en-us/library/ee125196%28v=vs.85%29.aspx`
enum class SpeechEngineConfidence {
	
	** Indication of low confidence.
	SECLowConfidence(-1),

	** Indication of normal confidence.
	SECNormalConfidence(0),
	
	** Indication of high confidence. 
	SECHighConfidence(1);
	
	const Int value
	
	private new make(Int value) {
		this.value = value
	}


	// ---- Variant Surrogate Methods -------------------------------------------------------------

	static SpeechEngineConfidence fromVariant(Variant variant) {
		varVal := variant.asInt
		return SpeechEngineConfidence.vals.find {
			it.value == varVal
		} ?: throw Err("Could not find SpeechEngineConfidence with value '$varVal'")
	}

	Variant toFancom() {
		Variant(value)
	}	
}
