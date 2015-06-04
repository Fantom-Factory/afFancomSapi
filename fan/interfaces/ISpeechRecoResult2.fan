using afFancom::Dispatch
using afFancom::Variant

** Returns information about a recognition attempt.
** 
** `http://msdn.microsoft.com/en-us/library/ee125511%28v=vs.85%29.aspx`
** 
** @clsid {8E0A246D-D3C8-45DE-8657-04290C458C3C}
class ISpeechRecoResult2 {
	internal Dispatch dispatch
	
	new makeFromDispatch(Dispatch dispatch) {
		this.dispatch = dispatch
	}


	// ---- Properties ----------------------------------------------------------------------------

	** Gets or sets the audio stream format.
	SpAudioFormat? audioFormat {
		get { dispatch.getProperty("AudioFormat").asType(SpAudioFormat#) }
		set { dispatch.setProperty("AudioFormat", it) }
	}

	** Returns an `ISpeechPhraseInfo` structure containing detailed information about the last 
	** recognized phrase.
	ISpeechPhraseInfo? phraseInfo {
		get { dispatch.getProperty("PhraseInfo").asType(ISpeechPhraseInfo#) }
		private set { }
	}

	** Retrieves the current ISpeechRecoContext for the recognizer.
	ISpeechRecoContext? recoContext {
		get { dispatch.getProperty("RecoContext").asType(ISpeechRecoContext#) }
		private set { }
	}

	** Retrieves the time information associated with the result.
	ISpeechRecoResultTimes? times {
		get { dispatch.getProperty("Times").asType(ISpeechRecoResultTimes#) }
		private set { }
	}


	// ---- Methods -------------------------------------------------------------------------------

	** Returns a list of alternative words.
	ISpeechPhraseAlternates? alternates(Int? requestCount, Int? startElement := 0, Int? elements := -1) {
		dispatch.call("Alternates", requestCount, startElement, elements).asType(ISpeechPhraseAlternates#)
	}

	** Creates an audio stream from the audio data in the result object.
	SpMemoryStream? audio(Int? startElement := 0, Int? elements := -1) {
		dispatch.call("Audio", startElement, elements).asType(SpMemoryStream#)
	}

	** Discards the requested data from a phrase object.
	Void discardResultInfo(SpeechDiscardType? valueTypes) {
		dispatch.call("DiscardResultInfo", valueTypes)
	}

	** Saves the phrase portion of the recognition result to memory.
	Variant saveToMemory() {
		dispatch.call("SaveToMemory")
	}

	** DiscardResultInfo
	Void setTextFeedback(Str? feedback, Bool? wasSuccessful) {
		dispatch.call("SetTextFeedback", feedback, wasSuccessful)
	}

	** Plays the audio sequence containing the recognized phrase.
	** 
	** Returns the stream number.
	Int? speakAudio(Int? startElement := 0, Int? elements := -1, SpeechVoiceSpeakFlags? flags := SpeechVoiceSpeakFlags.SVSFDefault) {
		dispatch.call("SpeakAudio", startElement, elements, flags).asInt
	}
}
