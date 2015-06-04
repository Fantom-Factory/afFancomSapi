using afFancom::Dispatch
using afFancom::Variant

** Provides access to the pronunciations of a speech lexicon word. 
** 
** `http://msdn.microsoft.com/en-us/library/ee125305%28v=vs.85%29.aspx`
** 
** @clsid {95252C5D-9E43-4F4A-9899-48EE73352F9F}
class ISpeechLexiconPronunciation {
	internal Dispatch dispatch
	
	new makeFromDispatch(Dispatch dispatch) {
		this.dispatch = dispatch
	}


	// ---- Properties ----------------------------------------------------------------------------

	** Returns the language id of the pronunciation.
	Int? langId {
		get { dispatch.getProperty("LangId").asInt }
		private set { }
	}

	** Returns a word's part of speech.
	SpeechPartOfSpeech? partOfSpeech {
		get { dispatch.getProperty("PartOfSpeech").asEnum(SpeechPartOfSpeech#) }
		private set { }
	}

	** Returns the pronunciation of a word as a Variant array of numeric phone ids.
	Variant phoneIds {
		get { dispatch.getProperty("PhoneIds") }
		private set { }
	}

	** Returns the pronunciation of a word as a string of phone symbols.
	Str? symbolic {
		get { dispatch.getProperty("Symbolic").asStr }
		private set { }
	}

	** Returns the type of the pronunciation.
	SpeechLexiconType? type {
		get { dispatch.getProperty("Type").asType(SpeechLexiconType#) }
		private set { }
	}

}
