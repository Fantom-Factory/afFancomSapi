using afFancom::Collection
using afFancom::Dispatch
using afFancom::Variant

** Represents a collection of `ISpeechPhraseElement` objects.
** 
** `http://msdn.microsoft.com/en-us/library/ee125334%28v=vs.85%29.aspx`
**
** @clsid {0626B328-3478-467D-A0B3-D0853B93DDA3}
class ISpeechPhraseElements : Collection {
	
	new makeFromDispatch(Dispatch dispatch) : super(dispatch, ISpeechPhraseElement#) { }


	// ---- Collection Methods --------------------------------------------------------------------

	override ISpeechPhraseElement? item(Int index) {
		super.item(index)
	}

	override ISpeechPhraseElement? find(|Obj? v, Int index-> Bool| callback) {
		super.find(callback)
	}

	override ISpeechPhraseElement?[] asList() {
		super.asList
	}


}
