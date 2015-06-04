using afFancom::Collection
using afFancom::Dispatch
using afFancom::Variant

** Represents a collection of `ISpeechLexiconWord` objects.
** 
** `http://msdn.microsoft.com/en-us/library/ee125312%28v=vs.85%29.aspx`
** 
** @clsid {8D199862-415E-47D5-AC4F-FAA608B424E6}
class ISpeechLexiconWords : Collection {
	
	new makeFromDispatch(Dispatch dispatch) : super(dispatch, ISpeechLexiconWord#) { }


	// ---- Collection Methods --------------------------------------------------------------------

	override ISpeechLexiconWord? item(Int index) {
		super.item(index)
	}

	override ISpeechLexiconWord? find(|Obj? v, Int index-> Bool| callback) {
		super.find(callback)
	}

	override ISpeechLexiconWord?[] asList() {
		super.asList
	}


}
