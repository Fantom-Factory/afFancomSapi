using afFancom::Collection
using afFancom::Dispatch
using afFancom::Variant

** Represents a collection of ISpeechLexiconPronunciation objects.
** 
** `http://msdn.microsoft.com/en-us/library/ee125303%28v=vs.85%29.aspx`
** 
** @clsid {72829128-5682-4704-A0D4-3E2BB6F2EAD3}
class ISpeechLexiconPronunciations : Collection {
	
	new makeFromDispatch(Dispatch dispatch) : super(dispatch, ISpeechLexiconPronunciation#) { }


	// ---- Collection Methods --------------------------------------------------------------------

	override ISpeechLexiconPronunciation? item(Int index) {
		super.item(index)
	}

	override ISpeechLexiconPronunciation? find(|Obj? v, Int index-> Bool| callback) {
		super.find(callback)
	}

	override ISpeechLexiconPronunciation?[] asList() {
		super.asList
	}


}
