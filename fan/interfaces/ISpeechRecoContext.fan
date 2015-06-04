using afFancom::Dispatch
using afFancom::Variant

** Defines a recognition context.
**
** `http://msdn.microsoft.com/en-us/library/ee125461%28v=vs.85%29.aspx`
**
** @clsid {580AA49D-7E1E-4809-B8E2-57DA806104B8}
class ISpeechRecoContext {
	internal Dispatch dispatch
	
	new makeFromDispatch(Dispatch dispatch) {
		this.dispatch = dispatch
	}

	Void withEvents(Obj eventSink) {
		dispatch.registerForEvents(eventSink)
	}

	
	// ---- Properties ----------------------------------------------------------------------------

	** Determines if the recognition context can change the voice format to match that of the 
	** engine.
	Bool? allowVoiceFormatMatchingOnNextSet {
		get { dispatch.getProperty("AllowVoiceFormatMatchingOnNextSet").asBool }
		set { dispatch.setProperty("AllowVoiceFormatMatchingOnNextSet", it) }
	}

	** AudioInInterferenceStatus
	SpeechInterference? audioInputInterferenceStatus {
		get { dispatch.getProperty("AudioInputInterferenceStatus").asEnum(SpeechInterference#) }
		private set { }
	}

	** Specifies the maximum number of alternates that will be generated for command and control 
	** grammars.
	Int? cmdMaxAlternates {
		get { dispatch.getProperty("CmdMaxAlternates").asInt }
		set { dispatch.setProperty("CmdMaxAlternates", it) }
	}

	** Specifies the types of events raised by the object.
	SpeechRecoEvents? eventInterests {
		get { dispatch.getProperty("EventInterests").asType(SpeechRecoEvents#) }
		set { dispatch.setProperty("EventInterests", it) }
	}

	** Identifies the recognizer associated with the recognition context.
	ISpeechRecognizer? recognizer {
		get { dispatch.getProperty("Recognizer").asType(ISpeechRecognizer#) }
		private set { }
	}

	** Specifies the UIType of the last UI requested from the engine.
	Str? requestedUIType {
		get { dispatch.getProperty("RequestedUIType").asStr }
		private set { }
	}

	** Gets and sets the audio retention status of the recognition context.
	SpeechRetainedAudioOptions? retainedAudio {
		get { dispatch.getProperty("RetainedAudio").asEnum(SpeechRetainedAudioOptions#) }
		set { dispatch.setProperty("RetainedAudio", it) }
	}

	** Gets and sets the format of audio retained by the recognition context.
	SpAudioFormat? retainedAudioFormat {
		get { dispatch.getProperty("RetainedAudioFormat").asType(SpAudioFormat#) }
		set { dispatch.setProperty("RetainedAudioFormat", it) }
	}

	** Gets or sets the active state of the recognition context.
	SpeechRecoContextState? state {
		get { dispatch.getProperty("State").asEnum(SpeechRecoContextState#) }
		set { dispatch.setProperty("State", it) }
	}

	** Specifies the SpVoice object associated with the recognition context.
	SpVoice? voice {
		get { dispatch.getProperty("Voice").asType(SpVoice#) }
		set { dispatch.setProperty("Voice", it) }
	}

	** Gets and sets the collection of SpeechRecoEvents which will stop the voice and purge the 
	** voice queue.
	SpeechRecoEvents? voicePurgeEvent {
		get { dispatch.getProperty("VoicePurgeEvent").asType(SpeechRecoEvents#) }
		set { dispatch.setProperty("VoicePurgeEvent", it) }
	}


	// ---- Methods -------------------------------------------------------------------------------

	** Sets a bookmark within the current recognition stream.
	Void bookmark(SpeechBookmarkOptions? options, Variant? streamPos, Variant? bookmarkId) {
		dispatch.call("Bookmark", options, streamPos, bookmarkId)
	}

	** Creates an SpGrammar object.
	ISpeechRecoGrammar? createGrammar(Variant? grammarId := Variant(0)) {
		dispatch.call("CreateGrammar", grammarId).asType(ISpeechRecoGrammar#)
	}

	** Creates a recognition result object from a phrase that has been saved to memory.
	ISpeechRecoResult? createResultFromMemory(Variant? resultBlock) {
		dispatch.call("CreateResultFromMemory", resultBlock).asType(ISpeechRecoResult#)
	}

	** Pauses the engine object to synchronize with the speech recognition (SR) engine.
	Void pause() {
		dispatch.call("Pause")
	}

	** Releases the speech recognition (SR) engine from the paused state and restarts the 
	** recognition process.
	Void resume() {
		dispatch.call("Resume")
	}

	** Passes the SR engine a string of adaptation data.
	Void setAdaptationData(Str? adaptationString) {
		dispatch.call("SetAdaptationData", adaptationString)
	}
}
