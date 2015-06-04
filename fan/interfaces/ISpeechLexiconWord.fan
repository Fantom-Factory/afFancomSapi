using afFancom::Dispatch
using afFancom::Variant

** Provides access to a lexicon word.
** 
** `http://msdn.microsoft.com/en-us/library/ee125314%28v=vs.85%29.aspx`
**  
** @clsid {4E5B933C-C9BE-48ED-8842-1EE51BB1D4FF}
class ISpeechLexiconWord {
	internal Dispatch dispatch
	
	new makeFromDispatch(Dispatch dispatch) {
		this.dispatch = dispatch
	}


	// ---- Properties ----------------------------------------------------------------------------

	** Returns the language Id of a lexicon word.
	Int? langId {
		get { dispatch.getProperty("LangId").asInt }
		private set { }
	}

	** Returns the pronunciations of a lexicon word.
	ISpeechLexiconPronunciations? pronunciations {
		get { dispatch.getProperty("Pronunciations").asType(ISpeechLexiconPronunciations#) }
		private set { }
	}

	** Returns the type of a lexicon word.
	SpeechWordType? type {
		get { dispatch.getProperty("Type").asType(SpeechWordType#) }
		private set { }
	}

	** Returns the text of a lexicon word.
	Str? word {
		get { dispatch.getProperty("Word").asStr }
		private set { }
	}

}
