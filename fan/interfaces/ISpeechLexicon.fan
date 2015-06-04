using afFancom::Dispatch
using afFancom::Variant

** Provides access to a lexicon word.
** 
** `http://msdn.microsoft.com/en-us/library/ee125314%28v=vs.85%29.aspx`
**  
** @clsid {3DA7627A-C7AE-4B23-8708-638C50362C25}
class ISpeechLexicon {
	internal Dispatch dispatch
	
	new makeFromDispatch(Dispatch dispatch) {
		this.dispatch = dispatch
	}


	// ---- Properties ----------------------------------------------------------------------------

	Int? generationId {
		get { dispatch.getProperty("GenerationId").asInt }
		private set { }
	}


	// ---- Methods -------------------------------------------------------------------------------

	Void addPronunciation(Str? bstrWord, Int? langId, SpeechPartOfSpeech? partOfSpeech := SpeechPartOfSpeech.SPSUnknown, Str? bstrPronunciation := "") {
		dispatch.call("AddPronunciation", bstrWord, langId, partOfSpeech, bstrPronunciation)
	}

	Void addPronunciationByPhoneIds(Str? bstrWord, Int? langId, SpeechPartOfSpeech? partOfSpeech := SpeechPartOfSpeech.SPSUnknown, Variant? phoneIds := Variant("")) {
		dispatch.call("AddPronunciationByPhoneIds", bstrWord, langId, partOfSpeech, phoneIds)
	}

	ISpeechLexiconWords? getGenerationChange(Int? generationId) {
		dispatch.call("GetGenerationChange", generationId).asType(ISpeechLexiconWords#)
	}

	** java.lang.NullPointerException
	** ISpeechLexiconPronunciations getPronunciations

	** java.lang.NullPointerException
	** ISpeechLexiconWords getWords

	Void removePronunciation(Str? bstrWord, Int? langId, SpeechPartOfSpeech? partOfSpeech := SpeechPartOfSpeech.SPSUnknown, Str? bstrPronunciation := "") {
		dispatch.call("RemovePronunciation", bstrWord, langId, partOfSpeech, bstrPronunciation)
	}

	Void removePronunciationByPhoneIds(Str? bstrWord, Int? langId, SpeechPartOfSpeech? partOfSpeech := SpeechPartOfSpeech.SPSUnknown, Variant? phoneIds := Variant("")) {
		dispatch.call("RemovePronunciationByPhoneIds", bstrWord, langId, partOfSpeech, phoneIds)
	}
}
