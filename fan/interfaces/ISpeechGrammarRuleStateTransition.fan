using afFancom::Dispatch
using afFancom::Variant

** Returns data about a transition from one rule state to another, or from a rule state to the end 
** of a rule. 
** 
** `http://msdn.microsoft.com/en-us/library/ee125271%28v=vs.85%29.aspx`
** 
** @clsid {CAFD1DB1-41D1-4A06-9863-E2E81DA17A9A}
class ISpeechGrammarRuleStateTransition {
	internal Dispatch dispatch
	
	new makeFromDispatch(Dispatch dispatch) {
		this.dispatch = dispatch
	}


	// ---- Properties ----------------------------------------------------------------------------

	** Specifies the rule state to which the transition leads.
	ISpeechGrammarRuleState? nextState {
		get { dispatch.getProperty("NextState").asType(ISpeechGrammarRuleState#) }
		private set { }
	}

	** Specifies the Id of a property contained in a semantic tag.
	Int? propertyId {
		get { dispatch.getProperty("PropertyId").asInt }
		private set { }
	}

	** Specifies the name of a property contained in a semantic tag.
	Str? propertyName {
		get { dispatch.getProperty("PropertyName").asStr }
		private set { }
	}

	** Returns the value of a property contained in a semantic tag.
	Variant propertyValue {
		get { dispatch.getProperty("PropertyValue") }
		private set { }
	}

	** Specifies the speech rule to which the transition leads.
	ISpeechGrammarRule? rule {
		get { dispatch.getProperty("Rule").asType(ISpeechGrammarRule#) }
		private set { }
	}

	** Returns the recognition text associated with a transition.
	Str? text {
		get { dispatch.getProperty("Text").asStr }
		private set { }
	}

	** Specifies the type of the transition.
	SpeechGrammarRuleStateTransitionType? type {
		get { dispatch.getProperty("Type").asEnum(SpeechGrammarRuleStateTransitionType#) }
		private set { }
	}

	** Assigns the transition a weight relative to its sibling transitions.
	Variant weight {
		get { dispatch.getProperty("Weight") }
		private set { }
	}

}
