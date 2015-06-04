using afFancom::Variant

** Lists the context in which the code managing the newly created object runs.
** 
** `http://msdn.microsoft.com/en-us/library/ee125216%28v=vs.85%29.aspx`
enum class SpeechTokenContext {

	** Creates and manages objects in the same process as the caller of the function.
	** 
	** Value is 1 (0x1)
	STCInprocServer(1),

	** Creates and manages objects as an in process (InProc) handler. This is a DLL running in the 
	** client process and implements client-side structures of this class when instances are 
	** accessed remotely.
	**  
	** Value is 2 (0x2)
	STCInprocHandler(2),

	** Creates and manages objects that are loaded in a separate process space; that is, it runs on 
	** same computer but in a different process.
	** 
	** Value is 4 (0x4)
	STCLocalServer(4),

	** Creates and manages objects on a remote machine context.
	** 
	** Value is 16 (0x10)
	STCRemoteServer(16),

	** Creates and manages objects for all class contexts.
	** 
	** Value is 23 (0x17)
	STCAll(23);


	const Int value

	private new make(Int value) {
		this.value = value
	}
	

	// ---- Variant Surrogate Methods -------------------------------------------------------------

	static SpeechTokenContext fromVariant(Variant variant) {
		varVal := variant.asInt
		return SpeechTokenContext.vals.find {
			it.value == varVal
		} ?: throw Err("Could not find SpeechTokenContext with value '$varVal'")
	}

	Variant toFancom() {
		Variant(value)
	}
}
