using afFancom::Collection
using afFancom::Dispatch
using afFancom::Variant

** Represents a collection of `ISpeechGrammarRule` objects.
** 
** `http://msdn.microsoft.com/en-us/library/ee125292%28v=vs.85%29.aspx`
** 
** @clsid {6FFA3B44-FC2D-40D1-8AFC-32911C7F1AD1}
class ISpeechGrammarRules : Collection {
	
	new makeFromDispatch(Dispatch dispatch) : super(dispatch, ISpeechGrammarRule#) { }


	// ---- Collection Methods --------------------------------------------------------------------

	override ISpeechGrammarRule? item(Int index) {
		super.item(index)
	}

	override ISpeechGrammarRule? find(|Obj? v, Int index-> Bool| callback) {
		super.find(callback)
	}

	override ISpeechGrammarRule?[] asList() {
		super.asList
	}


	// ---- Properties ----------------------------------------------------------------------------

	** Determines whether the grammar rules contained in the collection were created as dynamic.
	Bool? dynamic {
		get { dispatch.getProperty("Dynamic").asBool }
		private set { }
	}


	// ---- Methods -------------------------------------------------------------------------------

	** Creates a new grammar rule in an ISpeechGrammarRules collection.
	ISpeechGrammarRule? add(Str? ruleName, SpeechRuleAttributes? attributes, Int? ruleId := 0) {
		dispatch.call("Add", ruleName, attributes, ruleId).asType(ISpeechGrammarRule#)
	}

	** Compiles the rules in the rule collection.
	Void commit() {
		dispatch.call("Commit")
	}

	** Compiles the rules in the rule collection and saves the result.
	Variant commitAndSave(Str? errorText) {
		dispatch.call("CommitAndSave", errorText)
	}

	** Returns a grammar rule, specified by Name or by ID.
	ISpeechGrammarRule? findRule(Variant? ruleNameOrId) {
		dispatch.call("FindRule", ruleNameOrId).asType(ISpeechGrammarRule#)
	}
}
