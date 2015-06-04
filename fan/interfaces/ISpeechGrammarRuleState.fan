using afFancom::Dispatch
using afFancom::Variant

** Presents the properties and methods of a speech grammar rule state.
** 
** `http://msdn.microsoft.com/en-us/library/ee125283%28v=vs.85%29.aspx`
** 
** See [Example application of ISpGrammarBuilder]`http://msdn.microsoft.com/en-us/library/ee450817%28v=vs.85%29.aspx` 
** for examples of how to build Grammars. The example is in C++ (or sumthing) but translates pretty well.
** 
** @clsid {D4286F2C-EE67-45AE-B928-28D695362EDA}
class ISpeechGrammarRuleState {
	internal Dispatch dispatch
	
	new makeFromDispatch(Dispatch dispatch) {
		this.dispatch = dispatch
	}


	// ---- Properties ----------------------------------------------------------------------------

	** Specifies the rule to which the rule state belongs.
	ISpeechGrammarRule? rule {
		get { dispatch.getProperty("Rule").asType(ISpeechGrammarRule#) }
		private set { }
	}

	** Specifies the set of transitions out of the rule state.
	ISpeechGrammarRuleStateTransitions? transitions {
		get { dispatch.getProperty("Transitions").asType(ISpeechGrammarRuleStateTransitions#) }
		private set { }
	}


	// ---- Methods -------------------------------------------------------------------------------

	** Adds a rule reference transition from the current rule state to another rule state in the same rule.
	Void addRuleTransition(ISpeechGrammarRuleState? destinationState, ISpeechGrammarRule? rule, Str? propertyName := "", Int? propertyId := 0, Variant? propertyValue := Variant(""), Float? weight := 1.0f) {
		dispatch.call("AddRuleTransition", destinationState, rule, propertyName, propertyId, propertyValue, weight)
	}

	** Adds a special transition from the current rule state to another rule state in the same rule
	Void addSpecialTransition(ISpeechGrammarRuleState? destinationState, SpeechSpecialTransitionType? type, Str? propertyName := "", Int? propertyId := 0, Variant? propertyValue := Variant(""), Float? weight := 1.0f) {
		dispatch.call("AddSpecialTransition", destinationState, type, propertyName, propertyId, propertyValue, weight)
	}

	** Adds a word transition from this rule state to another rule state in the same rule
	Void addWordTransition(ISpeechGrammarRuleState? destState, Str? words, Str? separators := " ", SpeechGrammarWordType? type := SpeechGrammarWordType.SGLexical, Str? propertyName := "", Int? propertyId := 0, Variant? propertyValue := Variant(""), Float? weight := 1.0f) {
		dispatch.call("AddWordTransition", destState, words, separators, type, propertyName, propertyId, propertyValue, weight)
	}
}
