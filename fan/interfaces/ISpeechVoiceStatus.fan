using afFancom::Dispatch
using afFancom::Variant

** Defines the types of information returned by the SpVoice.Status method.
** 
** `http://msdn.microsoft.com/en-us/library/ee125527%28v=vs.85%29.aspx`
** 
** @clsid {8BE47B07-57F6-11D2-9EEE-00C04F797396}
class ISpeechVoiceStatus {
	internal Dispatch dispatch
	
	new makeFromDispatch(Dispatch dispatch) {
		this.dispatch = dispatch
	}


	// ---- Properties ----------------------------------------------------------------------------

	** Retrieves the number of the text input stream being spoken by the TTS engine.
	Int? currentStreamNumber {
		get { dispatch.getProperty("CurrentStreamNumber").asInt }
		private set { }
	}

	** Retrieves the length of the sentence currently being spoken by the TTS engine.
	Int? inputSentenceLength {
		get { dispatch.getProperty("InputSentenceLength").asInt }
		private set { }
	}

	** Retrieves the position one character prior to the beginning of the sentence currently being 
	** spoken by the TTS engine.
	Int? inputSentencePosition {
		get { dispatch.getProperty("InputSentencePosition").asInt }
		private set { }
	}

	** Retrieves the length of the word currently being spoken by the TTS engine.
	Int? inputWordLength {
		get { dispatch.getProperty("InputWordLength").asInt }
		private set { }
	}

	** Retrieves the position one character prior to the beginning of the word currently being 
	** spoken by the TTS engine.
	Int? inputWordPosition {
		get { dispatch.getProperty("InputWordPosition").asInt }
		private set { }
	}

	** Retrieves the string value of the last bookmark encountered by the TTS engine.
	Str? lastBookmark {
		get { dispatch.getProperty("LastBookmark").asStr }
		private set { }
	}

	** Retrieves the ID of the last bookmark encountered by the TTS engine.
	Int? lastBookmarkId {
		get { dispatch.getProperty("LastBookmarkId").asInt }
		private set { }
	}

	** Retrieves the HResult, or internal status code, from the last Speak or SpeakStream operation 
	** performed by the TTS engine.
	Int? lastHResult {
		get { dispatch.getProperty("LastHResult").asInt }
		private set { }
	}

	** Retrieves the number of the last audio stream spoken by the TTS engine.
	Int? lastStreamNumberQueued {
		get { dispatch.getProperty("LastStreamNumberQueued").asInt }
		private set { }
	}

	** Retrieves the ID of the current phoneme being spoken by the TTS engine.
	Int? phonemeId {
		get { dispatch.getProperty("PhonemeId").asInt }
		private set { }
	}

	** Retrieves the run state of the voice, which indicates whether the voice is speaking or 
	** inactive.
	SpeechRunState? runningState {
		get { dispatch.getProperty("RunningState").asType(SpeechRunState#) }
		private set { }
	}

	** Gets the ID of the current viseme being spoken by the TTS engine.
	Int? visemeId {
		get { dispatch.getProperty("VisemeId").asInt }
		private set { }
	}

}
