using afFancom::Dispatch
using afFancom::Variant

** Represents the part of a recognition result that returns information about the grammar rule that 
** produced the recognition.
** 
** `http://msdn.microsoft.com/en-us/library/ee125400%28v=vs.85%29.aspx`
** 
** @clsid {A7BFE112-A4A0-48D9-B602-C313843F6964}
class ISpeechPhraseRule {
	internal Dispatch dispatch
	
	new makeFromDispatch(Dispatch dispatch) {
		this.dispatch = dispatch
	}


	// ---- Properties ----------------------------------------------------------------------------

	** Returns a collection of the rule's child rules.
	ISpeechPhraseRules? children {
		get { dispatch.getProperty("Children").asType(ISpeechPhraseRules#) }
		private set { }
	}

	** Returns the confidence for the rule computed by SAPI.
	SpeechEngineConfidence? confidence {
		get { dispatch.getProperty("Confidence").asType(SpeechEngineConfidence#) }
		private set { }
	}

	** Returns the confidence score for the rule computed by the SR engine.
	Float? engineConfidence {
		get { dispatch.getProperty("EngineConfidence").asFloat }
		private set { }
	}

	** Returns the audio stream offset of the first phrase element in the recognition result 
	** matched by the rule.
	Int? firstElement {
		get { dispatch.getProperty("FirstElement").asInt }
		private set { }
	}

	** Returns the ID of the phrase rule.
	Int? id {
		get { dispatch.getProperty("Id").asInt }
		private set { }
	}

	** Returns the name of the phrase rule.
	Str? name {
		get { dispatch.getProperty("Name").asStr }
		private set { }
	}

	** Returns the number of phrase elements spanned by this rule.
	Int? numberOfElements {
		get { dispatch.getProperty("NumberOfElements").asInt }
		private set { }
	}

	** Returns the rule's parent rule.
	ISpeechPhraseRule? parent {
		get { dispatch.getProperty("Parent").asType(ISpeechPhraseRule#) }
		private set { }
	}

}
