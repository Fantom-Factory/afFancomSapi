using afFancom::Collection
using afFancom::Dispatch
using afFancom::Variant

** Represents a collection of `SpObjectToken` objects.
** 
** `http://msdn.microsoft.com/en-us/library/ee125320%28v=vs.85%29.aspx`
** 
** @clsid {9285B776-2E7B-4BC0-B53E-580EB6FA967F}
class ISpeechObjectTokens : Collection {
	
	new makeFromDispatch(Dispatch dispatch) : super(dispatch, SpObjectToken#) { }


	// ---- Collection Methods --------------------------------------------------------------------

	override SpObjectToken? item(Int index) {
		super.item(index)
	}

	override SpObjectToken? find(|Obj? v, Int index-> Bool| callback) {
		super.find(callback)
	}

	override SpObjectToken?[] asList() {
		super.asList
	}


}
