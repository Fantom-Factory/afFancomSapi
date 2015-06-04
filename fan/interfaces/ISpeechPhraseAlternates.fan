using afFancom::Collection
using afFancom::Dispatch
using afFancom::Variant

** Is a collection of ISpeechPhraseAlternate objects.
** 
** `http://msdn.microsoft.com/en-us/library/ee125323%28v=vs.85%29.aspx`
**  
** @clsid {B238B6D5-F276-4C3D-A6C1-2974801C3CC2}
class ISpeechPhraseAlternates : Collection {
	
	new makeFromDispatch(Dispatch dispatch) : super(dispatch, ISpeechPhraseAlternate#) { }


	// ---- Collection Methods --------------------------------------------------------------------

	override ISpeechPhraseAlternate? item(Int index) {
		super.item(index)
	}

	override ISpeechPhraseAlternate? find(|Obj? v, Int index-> Bool| callback) {
		super.find(callback)
	}

	override ISpeechPhraseAlternate?[] asList() {
		super.asList
	}


}
