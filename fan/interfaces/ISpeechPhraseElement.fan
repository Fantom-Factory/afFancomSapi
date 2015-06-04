using afFancom::Dispatch
using afFancom::Variant

** Provides access to information about a word or phrase. 
** 
** `http://msdn.microsoft.com/en-us/library/ee125345%28v=vs.85%29.aspx`
** 
** @clsid {E6176F96-E373-4801-B223-3B62C068C0B4}
class ISpeechPhraseElement {
	internal Dispatch dispatch
	
	new makeFromDispatch(Dispatch dispatch) {
		this.dispatch = dispatch
	}


	// ---- Properties ----------------------------------------------------------------------------

	** Returns the actual confidence for the phrase element.
	SpeechEngineConfidence? actualConfidence {
		get { dispatch.getProperty("ActualConfidence").asType(SpeechEngineConfidence#) }
		private set { }
	}

	** Returns the size of audio data in bytes for this phrase.
	Int? audioSizeBytes {
		get { dispatch.getProperty("AudioSizeBytes").asInt }
		private set { }
	}

	** Returns the length of phrase's audio in 100-nanosecond units.
	Int? audioSizeTime {
		get { dispatch.getProperty("AudioSizeTime").asInt }
		private set { }
	}

	** Returns the starting offset of the element in bytes relative to the start of the phrase in 
	** the original input stream.
	Int? audioStreamOffset {
		get { dispatch.getProperty("AudioStreamOffset").asInt }
		private set { }
	}

	** Returns the starting offset of the element in 100-nanosecond units relative to the start of 
	** the phrase.
	Int? audioTimeOffset {
		get { dispatch.getProperty("AudioTimeOffset").asInt }
		private set { }
	}

	** Returns a set of SpeechDisplayAttributes constants defining information about the display of 
	** this word. 
	SpeechDisplayAttributes? displayAttributes {
		get { dispatch.getProperty("DisplayAttributes").asType(SpeechDisplayAttributes#) }
		private set { }
	}

	** Returns the display text for the element.
	Str? displayText {
		get { dispatch.getProperty("DisplayText").asStr }
		private set { }
	}

	** Returns the confidence score for the rule computed by the SR engine.
	Float? engineConfidence {
		get { dispatch.getProperty("EngineConfidence").asFloat }
		private set { }
	}

	** Returns the lexical form of the element.
	Str? lexicalForm {
		get { dispatch.getProperty("LexicalForm").asStr }
		private set { }
	}

	** Returns the pronunciation of the element as phonemes.
	Variant pronunciation {
		get { dispatch.getProperty("Pronunciation") }
		private set { }
	}

	** Returns the required confidence for this element.
	SpeechEngineConfidence? requiredConfidence {
		get { dispatch.getProperty("RequiredConfidence").asType(SpeechEngineConfidence#) }
		private set { }
	}

	** Returns the size, in bytes, of the element in the retained audio stream.
	Int? retainedSizeBytes {
		get { dispatch.getProperty("RetainedSizeBytes").asInt }
		private set { }
	}

	** Returns the starting offset of the element in bytes relative to the start of the phrase in 
	** the retained audio stream.
	Int? retainedStreamOffset {
		get { dispatch.getProperty("RetainedStreamOffset").asInt }
		private set { }
	}

}
