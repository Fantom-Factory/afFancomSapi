using afFancom::Dispatch
using afFancom::Variant

** Stores the information for a semantic property. 
** 
** `http://msdn.microsoft.com/en-us/library/ee125377%28v=vs.85%29.aspx`
** 
** @clsid {CE563D48-961E-4732-A2E1-378A42B430BE}
class ISpeechPhraseProperty {
	internal Dispatch dispatch
	
	new makeFromDispatch(Dispatch dispatch) {
		this.dispatch = dispatch
	}


	// ---- Properties ----------------------------------------------------------------------------

	** Returns a collection of the property's child objects.
	ISpeechPhraseProperties? children {
		get { dispatch.getProperty("Children").asType(ISpeechPhraseProperties#) }
		private set { }
	}

	** Returns the confidence value for this semantic property computed by SAPI or the speech 
	** recognition engine.
	SpeechEngineConfidence? confidence {
		get { dispatch.getProperty("Confidence").asType(SpeechEngineConfidence#) }
		private set { }
	}

	** Returns the confidence value for this semantic property computed by the speech recognition 
	** (SR) engine.
	Float? engineConfidence {
		get { dispatch.getProperty("EngineConfidence").asFloat }
		private set { }
	}

	** Returns the offset of the first spoken element spanned by this property.
	Int? firstElement {
		get { dispatch.getProperty("FirstElement").asInt }
		private set { }
	}

	** Returns the ID of the semantic property.
	Int? id {
		get { dispatch.getProperty("Id").asInt }
		private set { }
	}

	** Returns the name of the semantic property.
	Str? name {
		get { dispatch.getProperty("Name").asStr }
		private set { }
	}

	** Returns the number of spoken elements spanned by this property.
	Int? numberOfElements {
		get { dispatch.getProperty("NumberOfElements").asInt }
		private set { }
	}

	** Specifies the parent of the semantic property.
	ISpeechPhraseProperty? parent {
		get { dispatch.getProperty("Parent").asType(ISpeechPhraseProperty#) }
		private set { }
	}

	** Returns the value of the semantic property.
	Variant value {
		get { dispatch.getProperty("Value") }
		private set { }
	}

}
