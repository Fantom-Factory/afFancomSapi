using afFancom::Variant

** Lists the top-level speech configuration database keys.
** 
** `http://msdn.microsoft.com/en-us/library/ee125192%28v=vs.85%29.aspx`
enum class SpeechDataKeyLocation {

	** The default location is set by ISpObjectTokenCategory.
	** 
	** Value is 0 (0x0)
	SDKLDefaultLocation(0),

	** The speech configuration database key 'HKEY_CURRENT_USER'.
	** 
	** Value is 1 (0x1)
	SDKLCurrentUser(1),

	** The speech configuration database key 'HKEY_LOCAL_MACHINE'.
	** 
	** Value is 2 (0x2)
	SDKLLocalMachine(2),

	** The speech configuration database key 'HKEY_CURRENT_CONFIG'.
	** Value is 5 (0x5)
	SDKLCurrentConfig(5);


	const Int value

	private new make(Int value) {
		this.value = value
	}
	
	
	// ---- Variant Surrogate Methods -------------------------------------------------------------
	
	static SpeechDataKeyLocation fromVariant(Variant variant) {
		varVal := variant.asInt
		return SpeechDataKeyLocation.vals.find { 
			it.value == varVal
		} ?: throw Err("Could not find SpeechDataKeyLocation with value '$varVal'")
	}
	
	Variant toFancom() {
		Variant(value)
	}
}
