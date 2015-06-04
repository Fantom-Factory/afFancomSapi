using afFancom::Dispatch
using afFancom::Variant

** Represents a speech recognition engine.
** 
** `http://msdn.microsoft.com/en-us/library/ee125461%28v=vs.85%29.aspx`
**
** @clsid {2D5F1C0C-BD75-4B08-9478-3B11FEA2586C}
class ISpeechRecognizer {
	internal Dispatch dispatch
	
	new makeFromDispatch(Dispatch dispatch) {
		this.dispatch = dispatch
	}


	// ---- Properties ----------------------------------------------------------------------------

	** Specifies whether the recognizer can change audio input formats on subsequent audio streams.
	Bool? allowAudioInputFormatChangesOnNextSet {
		get { dispatch.getProperty("AllowAudioInputFormatChangesOnNextSet").asBool }
		set { dispatch.setProperty("AllowAudioInputFormatChangesOnNextSet", it) }
	}

	** Gets and sets the recognizer's audio input device.
	SpObjectToken? audioInput {
		get { dispatch.getProperty("AudioInput").asType(SpObjectToken#) }
		set { dispatch.setProperty("AudioInput", it) }
	}

	** Gets and sets the recognizer's audio input stream.
	ISpeechBaseStream? audioInputStream {
		get { dispatch.getProperty("AudioInputStream").asType(ISpeechBaseStream#) }
		set { dispatch.setProperty("AudioInputStream", it) }
	}

	** Indicates whether a recognition engine is shared or InProc.
	Bool? isShared {
		get { dispatch.getProperty("IsShared").asBool }
		private set { }
	}

	** Specifies the recognizer's current recognition profile.
	SpObjectToken? profile {
		get { dispatch.getProperty("Profile").asType(SpObjectToken#) }
		set { dispatch.setProperty("Profile", it) }
	}

	** Specifies characteristics about the active recognizer.
	SpObjectToken? recognizer {
		get { dispatch.getProperty("Recognizer").asType(SpObjectToken#) }
		set { dispatch.setProperty("Recognizer", it) }
	}

	** Returns the current state of the recognition engine.
	SpeechRecognizerState? state {
		get { dispatch.getProperty("State").asEnum(SpeechRecognizerState#) }
		set { dispatch.setProperty("State", it) }
	}

	** Returns an object representing the status of the recognizer.
	ISpeechRecognizerStatus? status {
		get { dispatch.getProperty("Status").asType(ISpeechRecognizerStatus#) }
		private set { }
	}


	// ---- Methods -------------------------------------------------------------------------------

	** Creates a recognition context object from the recognizer.
	ISpeechRecoContext? createRecoContext() {
		dispatch.call("CreateRecoContext").asType(ISpeechRecoContext#)
	}

	** Initiates the display of the specified UI.
	Void displayUI(Int? hWndParent, Str? title, Str? typeOfUI, Variant? extraData := Variant("")) {
		dispatch.call("DisplayUI", hWndParent, title, typeOfUI, extraData)
	}

	** Emulates recognition from a textual source rather than from a spoken source.
	Void emulateRecognition(Variant? textElements, Variant? elementDisplayAttributes := Variant(""), Int? languageId := 0) {
		dispatch.call("EmulateRecognition", textElements, elementDisplayAttributes, languageId)
	}

	** Returns a selection of the available audio input devices.
	ISpeechObjectTokens? getAudioInputs(Str? requiredAttributes := "", Str? optionalAttributes := "") {
		dispatch.call("GetAudioInputs", requiredAttributes, optionalAttributes).asType(ISpeechObjectTokens#)
	}

	** Returns a selection of the available audio input devices.
	SpAudioFormat? getFormat(SpeechFormatType? type) {
		dispatch.call("GetFormat", type).asType(SpAudioFormat#)
	}

	** Returns a selection of the available user speech profiles.
	ISpeechObjectTokens? getProfiles(Str? requiredAttributes := "", Str? optionalAttributes := "") {
		dispatch.call("GetProfiles", requiredAttributes, optionalAttributes).asType(ISpeechObjectTokens#)
	}

	** Returns a numeric value specified by the named key.
	Bool? getPropertyNumber(Str? name, Int? value) {
		dispatch.call("GetPropertyNumber", name, value).asBool
	}

	** Returns the string value corresponding to the specified key name.
	Bool? getPropertyString(Str? name, Str? value) {
		dispatch.call("GetPropertyString", name, value).asBool
	}

	** Returns a selection of SpeechRecognizer objects in the speech configuration database.
	ISpeechObjectTokens? getRecognizers(Str? requiredAttributes := "", Str? optionalAttributes := "") {
		dispatch.call("GetRecognizers", requiredAttributes, optionalAttributes).asType(ISpeechObjectTokens#)
	}

	** Determines if the specified UI is supported.
	Bool? isUISupported(Str? typeOfUI, Variant? extraData := Variant("")) {
		dispatch.call("IsUISupported", typeOfUI, extraData).asBool
	}

	** Sets a numeric property corresponding to the specified name.
	Bool? setPropertyNumber(Str? name, Int? value) {
		dispatch.call("SetPropertyNumber", name, value).asBool
	}

	** Sets a text property corresponding to the specified name.
	Bool? setPropertyString(Str? name, Str? value) {
		dispatch.call("SetPropertyString", name, value).asBool
	}
}
