using afFancom::Collection
using afFancom::Dispatch
using afFancom::Variant

** Represents a collection of `ISpeechPhraseRule` objects. 
** 
** `http://msdn.microsoft.com/en-us/library/ee125392%28v=vs.85%29.aspx`
** 
** @clsid {9047D593-01DD-4B72-81A3-E4A0CA69F407}
class ISpeechPhraseRules : Collection {
	
	new makeFromDispatch(Dispatch dispatch) : super(dispatch, ISpeechPhraseRule#) { }


	// ---- Collection Methods --------------------------------------------------------------------

	override ISpeechPhraseRule? item(Int index) {
		super.item(index)
	}

	override ISpeechPhraseRule? find(|Obj? v, Int index-> Bool| callback) {
		super.find(callback)
	}

	override ISpeechPhraseRule?[] asList() {
		super.asList
	}


}
