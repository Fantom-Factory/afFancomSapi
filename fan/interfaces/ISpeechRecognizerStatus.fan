using afFancom::Dispatch
using afFancom::Variant

** Returns the status of the speech recognition (SR) engine represented by the recognizer object.
** 
** `http://msdn.microsoft.com/en-us/library/ee125446%28v=vs.85%29.aspx`
** 
** @clsid {BFF9E781-53EC-484E-BB8A-0E1B5551E35C}
class ISpeechRecognizerStatus {
	internal Dispatch dispatch
	
	new makeFromDispatch(Dispatch dispatch) {
		this.dispatch = dispatch
	}


	// ---- Properties ----------------------------------------------------------------------------

	** Returns the status of the recognizer's audio output.
	ISpeechAudioStatus? audioStatus {
		get { dispatch.getProperty("AudioStatus").asType(ISpeechAudioStatus#) }
		private set { }
	}

	** Returns the unique identifier associated with the current engine.
	Str? clsidEngine {
		get { dispatch.getProperty("ClsidEngine").asStr }
		private set { }
	}

	** Returns the number of the current recognition stream.
	Int? currentStreamNumber {
		get { dispatch.getProperty("CurrentStreamNumber").asInt }
		private set { }
	}

	** Returns the recognizer's position in the recognition stream, in bytes.
	Variant currentStreamPosition {
		get { dispatch.getProperty("CurrentStreamPosition") }
		private set { }
	}

	** Returns the current engine's number of active rules.
	Int? numberOfActiveRules {
		get { dispatch.getProperty("NumberOfActiveRules").asInt }
		private set { }
	}

	** Returns an array containing the languages the active engine supports.
	Variant supportedLanguages {
		get { dispatch.getProperty("SupportedLanguages") }
		private set { }
	}

}
