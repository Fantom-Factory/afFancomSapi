using afFancom::Collection
using afFancom::Dispatch
using afFancom::Variant

** Represents a collection of ISpeechPhraseProperty objects.
** 
** `http://msdn.microsoft.com/en-us/library/ee125370%28v=vs.85%29.aspx`
**  
** @clsid {08166B47-102E-4B23-A599-BDB98DBFD1F4}
class ISpeechPhraseProperties : Collection {
	
	new makeFromDispatch(Dispatch dispatch) : super(dispatch, ISpeechPhraseProperty#) { }


	// ---- Collection Methods --------------------------------------------------------------------

	override ISpeechPhraseProperty? item(Int index) {
		super.item(index)
	}

	override ISpeechPhraseProperty? find(|Obj? v, Int index-> Bool| callback) {
		super.find(callback)
	}

	override ISpeechPhraseProperty?[] asList() {
		super.asList
	}


}
