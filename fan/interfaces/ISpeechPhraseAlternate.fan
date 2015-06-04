using afFancom::Dispatch
using afFancom::Variant

** Enables applications to retrieve alternate phrase information from a speech recognition (SR) 
** engine, and to update the SR engine's language model to reflect committed alternate changes.
** 
** `http://msdn.microsoft.com/en-us/library/ee125327%28v=vs.85%29.aspx`
** 
** @clsid {27864A2A-2B9F-4CB8-92D3-0D2722FD1E73}
class ISpeechPhraseAlternate {
	internal Dispatch dispatch
	
	new makeFromDispatch(Dispatch dispatch) {
		this.dispatch = dispatch
	}


	// ---- Properties ----------------------------------------------------------------------------

	** Returns the count of phrase elements in the alternate's parent ISpeechRecoResult object.
	Int? numberOfElementsInResult {
		get { dispatch.getProperty("NumberOfElementsInResult").asInt }
		private set { }
	}

	** Returns the ISpeechPhraseInfo object of the alternate's parent ISpeechRecoResult object.
	ISpeechPhraseInfo? phraseInfo {
		get { dispatch.getProperty("PhraseInfo").asType(ISpeechPhraseInfo#) }
		private set { }
	}

	** Returns the alternate's parent ISpeechRecoResult object.
	ISpeechRecoResult? recoResult {
		get { dispatch.getProperty("RecoResult").asType(ISpeechRecoResult#) }
		private set { }
	}

	** Specifies the starting phrase element of the alternate's parent ISpeechRecoResult object.
	Int? startElementInResult {
		get { dispatch.getProperty("StartElementInResult").asInt }
		private set { }
	}


	// ---- Methods -------------------------------------------------------------------------------

	** Specifies that the alternate recognition should replace the recognition selected by the SR 
	** engine.
	Void commit() {
		dispatch.call("Commit")
	}
}
