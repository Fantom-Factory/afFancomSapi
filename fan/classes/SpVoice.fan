using afFancom::Dispatch
using afFancom::Variant

** The SpVoice object brings the text-to-speech (TTS) engine capabilities to applications using 
** SAPI automation.
** 
** `http://msdn.microsoft.com/en-us/library/ee125640%28v=vs.85%29.aspx`
**
** @clsid {96749377-3391-11D2-9EE3-00C04F797396}
class SpVoice {
	internal Dispatch dispatch
	
	static const Str progId := "SAPI.SpVoice"

	new makeFromProgId() {
		this.dispatch = Dispatch.makeFromProgId(progId)
	}
	
	new makeFromDispatch(Dispatch dispatch) {
		this.dispatch = dispatch
	}

	Void withEvents(Obj eventSink) {
		dispatch.registerForEvents(eventSink)
	}
	

	// ---- Properties ----------------------------------------------------------------------------

	** 	Gets and sets the alert boundary, which specifies how a speaking voice pauses itself for 
	** alerts.
	SpeechVoiceEvents? alertBoundary {
		get { dispatch.getProperty("AlertBoundary").asType(SpeechVoiceEvents#) }
		set { dispatch.setProperty("AlertBoundary", it) }
	}

	** Gets and sets the flag that specifies whether the voice is allowed to adjust its audio 
	** output format automatically.
	Bool? allowAudioOutputFormatChangesOnNextSet {
		get { dispatch.getProperty("AllowAudioOutputFormatChangesOnNextSet").asBool }
		set { dispatch.setProperty("AllowAudioOutputFormatChangesOnNextSet", it) }
	}

	** Gets the audio output object
	SpObjectToken? audioOutput {
		get { dispatch.getProperty("AudioOutput").asType(SpObjectToken#) }
		set { dispatch.setProperty("AudioOutput", it) }
	}

	** Gets the audio output stream
	ISpeechBaseStream? audioOutputStream {
		get { dispatch.getProperty("AudioOutputStream").asType(ISpeechBaseStream#) }
		set { dispatch.setProperty("AudioOutputStream", it) }
	}

	** Gets and sets the types of events received by the voice.
	SpeechVoiceEvents? eventInterests {
		get { dispatch.getProperty("EventInterests").asType(SpeechVoiceEvents#) }
		set { dispatch.setProperty("EventInterests", it) }
	}

	** Gets and sets the priority level of the voice.
	SpeechVoicePriority? priority {
		get { dispatch.getProperty("Priority").asEnum(SpeechVoicePriority#) }
		set { dispatch.setProperty("Priority", it) }
	}

	** Gets and sets the speaking rate of the voice.
	Int? rate {
		get { dispatch.getProperty("Rate").asInt }
		set { dispatch.setProperty("Rate", it) }
	}

	** Returns the current speaking and event status of the voice in an 'ISpeechVoiceStatus' 
	** object.
	ISpeechVoiceStatus? status {
		get { dispatch.getProperty("Status").asType(ISpeechVoiceStatus#) }
		private set { }
	}

	** SyncSpeakTimeout
	Int? synchronousSpeakTimeout {
		get { dispatch.getProperty("SynchronousSpeakTimeout").asInt }
		set { dispatch.setProperty("SynchronousSpeakTimeout", it) }
	}

	** Gets and sets the currently active member of the Voices collection.
	SpObjectToken? voice {
		get { dispatch.getProperty("Voice").asType(SpObjectToken#) }
		set { dispatch.setProperty("Voice", it) }
	}

	** Gets and sets the base volume (loudness) level of the voice.
	Int? volume {
		get { dispatch.getProperty("Volume").asInt }
		set { dispatch.setProperty("Volume", it) }
	}


	// ---- Methods -------------------------------------------------------------------------------

	** Initiates the display of the specified UI.
	Void displayUI(Int? hWndParent, Str? title, Str? typeOfUI, Variant? extraData := Variant("")) {
		dispatch.call("DisplayUI", hWndParent, title, typeOfUI, extraData)
	}

	** Returns a selection of available audio output tokens.
	ISpeechObjectTokens? getAudioOutputs(Str? requiredAttributes := "", Str? optionalAttributes := "") {
		dispatch.call("GetAudioOutputs", requiredAttributes, optionalAttributes).asType(ISpeechObjectTokens#)
	}

	** Returns a selection of voices available to the voice.
	ISpeechObjectTokens? getVoices(Str? requiredAttributes := "", Str? optionalAttributes := "") {
		dispatch.call("GetVoices", requiredAttributes, optionalAttributes).asType(ISpeechObjectTokens#)
	}

	** Determines if the specified UI is supported.
	Bool? isUISupported(Str? typeOfUI, Variant? extraData := Variant("")) {
		dispatch.call("IsUISupported", typeOfUI, extraData).asBool
	}

	** Pauses the voices rendering.
	Void pause() {
		dispatch.call("Pause")
	}

	** Resumes the voices rendering.
	Void resume() {
		dispatch.call("Resume")
	}

	** Skips rendering the specified number of items.
	Int? skip(Str? type, Int? numItems) {
		dispatch.call("Skip", type, numItems).asInt
	}

	** Initiates the speaking of a text string, text file or wave file by the voice.
	Int? speak(Str? text, SpeechVoiceSpeakFlags? flags := SpeechVoiceSpeakFlags.SVSFDefault) {
		dispatch.call("Speak", text, flags).asInt
	}

	** 	Gets an event handle from the voice that will be signaled when the voice finishes speaking.
	Int? speakCompleteEvent() {
		dispatch.call("SpeakCompleteEvent").asInt
	}

	** Initiates the speaking of a text stream or sound file by the voice.
	Int? speakStream(ISpeechBaseStream? stream, SpeechVoiceSpeakFlags? flags := SpeechVoiceSpeakFlags.SVSFDefault) {
		dispatch.call("SpeakStream", stream, flags).asInt
	}

	** Blocks the caller until either the voice has finished speaking or the specified time interval has elapsed.
	Bool? waitUntilDone(Int? msTimeout) {
		dispatch.call("WaitUntilDone", msTimeout).asBool
	}
}
