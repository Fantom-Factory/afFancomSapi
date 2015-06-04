using afFancom::Dispatch
using afFancom::Variant

** Defines the properties and methods of a speech grammar rule.
** 
** `http://msdn.microsoft.com/en-us/library/ee125300%28v=vs.85%29.aspx`
**
** @clsid {AFE719CF-5DD1-44F2-999C-7A399F1CFCCC}
class ISpeechGrammarRule {
	internal Dispatch dispatch
	
	new makeFromDispatch(Dispatch dispatch) {
		this.dispatch = dispatch
	}


	// ---- Properties ----------------------------------------------------------------------------

	** Specifies the ID of the speech grammar rule.
	SpeechRuleAttributes? attributes {
		get { dispatch.getProperty("Attributes").asType(SpeechRuleAttributes#) }
		private set { }
	}

	** Specifies the ID of the speech grammar rule.
	Int? id {
		get { dispatch.getProperty("Id").asInt }
		private set { }
	}

	** Specifies the initial state of the speech grammar rule.
	ISpeechGrammarRuleState? initialState {
		get { dispatch.getProperty("InitialState").asType(ISpeechGrammarRuleState#) }
		private set { }
	}

	** Specifies the name of the speech grammar rule.
	Str? name {
		get { dispatch.getProperty("Name").asStr }
		private set { }
	}


	// ---- Methods -------------------------------------------------------------------------------

	** Adds a string to a speech rule.
	** 
	** This method is used with an interpreter rule, in which case the interpreter can call the 
	** C/C++ function 'ISpCFGInterpreterSite::GetResourceValue' to get the value of a specified 
	** resource name.
	Void addResource(Str resourceName, Str resourceValue) {
		dispatch.call("AddResource", resourceName, resourceValue)
	}

	** Adds a state to a speech rule.
	** 
	** This method can be used with the 'ISpeechGrammarRuleState' methods 'AddRuleTransition', 
	** 'AddSpecialTransition', or 'AddWordTransition' to modify speech rules programmatically.
	ISpeechGrammarRuleState? addState() {
		dispatch.call("AddState").asType(ISpeechGrammarRuleState#)
	}

	** Clears a rule, leaving only its initial state.
	Void clear() {
		dispatch.call("Clear")
	}
}
