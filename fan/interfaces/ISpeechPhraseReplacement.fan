using afFancom::Dispatch
using afFancom::Variant

** specifies a replacement, or text normalization, of one or more spoken words in a recognition 
** result.
** 
** `http://msdn.microsoft.com/en-us/library/ee125388%28v=vs.85%29.aspx`
** 
** @clsid {2890A410-53A7-4FB5-94EC-06D4998E3D02}
class ISpeechPhraseReplacement {
	internal Dispatch dispatch
	
	new makeFromDispatch(Dispatch dispatch) {
		this.dispatch = dispatch
	}


	// ---- Properties ----------------------------------------------------------------------------

	** Returns a set of SpeechDisplayAttributes constants specifying information about the display 
	** of this word.
	SpeechDisplayAttributes? displayAttributes {
		get { dispatch.getProperty("DisplayAttributes").asType(SpeechDisplayAttributes#) }
		private set { }
	}

	** Returns a set of SpeechDisplayAttributes constants specifying information about the display 
	** of this word.
	Int? firstElement {
		get { dispatch.getProperty("FirstElement").asInt }
		private set { }
	}

	** Returns the number of spoken elements to replaced.
	Int? numberOfElements {
		get { dispatch.getProperty("NumberOfElements").asInt }
		private set { }
	}

	** 	Returns the text of the replacement.
	Str? text {
		get { dispatch.getProperty("Text").asStr }
		private set { }
	}

}
