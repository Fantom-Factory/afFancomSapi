using afFancom::Collection
using afFancom::Dispatch
using afFancom::Variant

** Represents a collection of `ISpeechPhraseReplacement` objects.
** 
** `http://msdn.microsoft.com/en-us/library/ee125383%28v=vs.85%29.aspx`
**  
** @clsid {38BC662F-2257-4525-959E-2069D2596C05}
class ISpeechPhraseReplacements : Collection {
	
	new makeFromDispatch(Dispatch dispatch) : super(dispatch, ISpeechPhraseReplacement#) { }


	// ---- Collection Methods --------------------------------------------------------------------

	override ISpeechPhraseReplacement? item(Int index) {
		super.item(index)
	}

	override ISpeechPhraseReplacement? find(|Obj? v, Int index-> Bool| callback) {
		super.find(callback)
	}

	override ISpeechPhraseReplacement?[] asList() {
		super.asList
	}


}
