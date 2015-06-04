using afFancom::Variant

** Lists possible locations storing token information.
** 
** `http://msdn.microsoft.com/en-us/library/ee125217%28v=vs.85%29.aspx`
enum class SpeechTokenShellFolder {

	** Stores information in the application data of the user's profile.
	** 
	** Value is 26 (0x1A)
	STSF_AppData(26),

	** Stores information in the My Computer folder. This is a virtual folder containing everything 
	** on the local computer 
	** 
	** Value is 28 (0x1C)
	STSF_LocalAppData(28),

	** Stores information in the file system directory that serves as a common repository for 
	** application-specific data.
	** 
	** Value is 35 (0x23)
	STSF_CommonAppData(35),

	** Forces the creation of a folder. This flag is used in combination with another CSIDL value 
	** to create the item.
	** 
	** Value is 32768 (0x8000)
	STSF_FlagCreate(32768);


	const Int value

	private new make(Int value) {
		this.value = value
	}
	

	// ---- Variant Surrogate Methods -------------------------------------------------------------

	static SpeechTokenShellFolder fromVariant(Variant variant) {
		varVal := variant.asInt
		return SpeechTokenShellFolder.vals.find {
			it.value == varVal
		} ?: throw Err("Could not find SpeechTokenShellFolder with value '$varVal'")
	}

	Variant toFancom() {
		Variant(value)
	}
}
