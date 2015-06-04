using afFancom::Collection
using afFancom::Dispatch
using afFancom::Variant

** Represents a collection of `ISpeechGrammarRuleStateTransition` objects.
** 
** `http://msdn.microsoft.com/en-us/library/ee125269%28v=vs.85%29.aspx`
** 
** @clsid {EABCE657-75BC-44A2-AA7F-C56476742963}
class ISpeechGrammarRuleStateTransitions : Collection {
	
	new makeFromDispatch(Dispatch dispatch) : super(dispatch, ISpeechGrammarRuleStateTransition#) { }


	// ---- Collection Methods --------------------------------------------------------------------

	override ISpeechGrammarRuleStateTransition? item(Int index) {
		super.item(index)
	}

	override ISpeechGrammarRuleStateTransition? find(|Obj? v, Int index-> Bool| callback) {
		super.find(callback)
	}

	override ISpeechGrammarRuleStateTransition?[] asList() {
		super.asList
	}


}
