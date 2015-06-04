using afFancom::Dispatch
using afFancom::Variant

** Provides the ability to rebuild phrase information from audio data saved to memory.
** 
** `http://msdn.microsoft.com/en-us/library/ee125605%28v=vs.85%29.aspx`
** 
** @clsid {C23FC28D-C55F-4720-8B32-91F73C2BD5D1}
class SpPhraseInfoBuilder {
	internal Dispatch dispatch
	
	static const Str progId := "SAPI.SpPhraseInfoBuilder"

	new makeFromProgId() {
		this.dispatch = Dispatch.makeFromProgId(progId)
	}
	
	new makeFromDispatch(Dispatch dispatch) {
		this.dispatch = dispatch
	}



	// ---- Methods -------------------------------------------------------------------------------

	** Recreates phrase information from a phrase that has been saved to memory. 
	ISpeechPhraseInfo? restorePhraseFromMemory(Variant? phraseInMemory) {
		dispatch.call("RestorePhraseFromMemory", phraseInMemory).asType(ISpeechPhraseInfo#)
	}
}
