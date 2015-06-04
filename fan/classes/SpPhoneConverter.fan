using afFancom::Dispatch
using afFancom::Variant

** Supports conversion between phoneme symbols and phoneme IDs.
** 
** `http://msdn.microsoft.com/en-us/library/ee125602%28v=vs.85%29.aspx`
** 
** @clsid {9185F743-1143-4C28-86B5-BFF14F20E5C8}
class SpPhoneConverter {
	internal Dispatch dispatch
	
	static const Str progId := "SAPI.SpPhoneConverter"

	new makeFromProgId() {
		this.dispatch = Dispatch.makeFromProgId(progId)
	}
	
	new makeFromDispatch(Dispatch dispatch) {
		this.dispatch = dispatch
	}


	// ---- Properties ----------------------------------------------------------------------------

	** Gets and sets the language id of the converter.
	Int? languageId {
		get { dispatch.getProperty("LanguageId").asInt }
		set { dispatch.setProperty("LanguageId", it) }
	}


	// ---- Methods -------------------------------------------------------------------------------

	** Converts an array of phoneme IDs to a string of phoneme symbols.
	Str? idToPhone(Variant? idArray) {
		dispatch.call("IdToPhone", idArray).asStr
	}

	** Converts a string of phoneme symbols to an array of phoneme IDs.
	Variant phoneToId(Str? phonemes) {
		dispatch.call("PhoneToId", phonemes)
	}
}
