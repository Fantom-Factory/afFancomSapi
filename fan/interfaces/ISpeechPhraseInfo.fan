using afFancom::Dispatch
using afFancom::Variant

** Contains properties detailing phrase elements. 
** 
** `http://msdn.microsoft.com/en-us/library/ee125361%28v=vs.85%29.aspx`
**
** @clsid {961559CF-4E67-4662-8BF0-D93F1FCD61B3}
class ISpeechPhraseInfo {
	internal Dispatch dispatch
	
	new makeFromDispatch(Dispatch dispatch) {
		this.dispatch = dispatch
	}


	// ---- Properties ----------------------------------------------------------------------------

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

	** Returns the start time in the audio stream for the phrase.
	Variant audioStreamPosition {
		get { dispatch.getProperty("AudioStreamPosition") }
		private set { }
	}

	** Returns information about the elements of the phrase.
	ISpeechPhraseElements? elements {
		get { dispatch.getProperty("Elements").asType(ISpeechPhraseElements#) }
		private set { }
	}

	** Returns a string containing the GUID of the engine recognizing this phrase.
	Str? engineId {
		get { dispatch.getProperty("EngineId").asStr }
		private set { }
	}

	** Returns the private data of the engine.
	Variant enginePrivateData {
		get { dispatch.getProperty("EnginePrivateData") }
		private set { }
	}

	** Returns the ID of the grammar that contains the top-level rule used to recognize the phrase. 
	Variant grammarId {
		get { dispatch.getProperty("GrammarId") }
		private set { }
	}

	** Returns the language ID for the phrase elements.
	Int? languageId {
		get { dispatch.getProperty("LanguageId").asInt }
		private set { }
	}

	** Returns the root property for the result.
	ISpeechPhraseProperties? properties {
		get { dispatch.getProperty("Properties").asType(ISpeechPhraseProperties#) }
		private set { }
	}

	** Returns possible text replacements.
	ISpeechPhraseReplacements? replacements {
		get { dispatch.getProperty("Replacements").asType(ISpeechPhraseReplacements#) }
		private set { }
	}

	** Returns the size in bytes of the retained audio data for the audio format specified.
	Int? retainedSizeBytes {
		get { dispatch.getProperty("RetainedSizeBytes").asInt }
		private set { }
	}

	** Retrieves information about the top-level rule that was used to recognize the phrase.
	ISpeechPhraseRule? rule {
		get { dispatch.getProperty("Rule").asType(ISpeechPhraseRule#) }
		private set { }
	}

	** Returns the start time for start of phrase audio in absolute time.
	Variant startTime {
		get { dispatch.getProperty("StartTime") }
		private set { }
	}


	// ---- Methods -------------------------------------------------------------------------------

	** Returns the display attribute for the text.
	SpeechDisplayAttributes? getDisplayAttributes(Int? startElement := 0, Int? elements := -1, Bool? useReplacements := true) {
		dispatch.call("GetDisplayAttributes", startElement, elements, useReplacements).asType(SpeechDisplayAttributes#)
	}

	** Returns the text from a recognition as a single string.
	Str? getText(Int? startElement := 0, Int? elements := -1, Bool? useReplacements := true) {
		dispatch.call("GetText", startElement, elements, useReplacements).asStr
	}

	** The SaveToMemory method saves the phrase information from a recognition result to memory.
	** 
	** The phrase may be recalled at a later time. To retrieve the phrase information from memory 
	** use `SpPhraseInfoBuilder#RestorePhraseFromMemory`.
	Variant saveToMemory() {
		dispatch.call("SaveToMemory")
	}
}
