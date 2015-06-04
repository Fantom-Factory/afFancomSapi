using afFancom::Dispatch
using afFancom::Variant

** Represents a class of object tokens. Object tokens are associated with specific folders in the 
** Speech configuration database, and these folders are organized into categories, such as 
** Recognizers, AudioInputs and Voices. An SpObjectTokenCategory object represents a single 
**category of object tokens, and provides access to all the tokens within that category.
** 
** Applications can derive the category of an initialized 'SpObjectToken' object from its Category 
** property, or they can create a new 'SpObjectTokenCategory' object and use the SetId method to 
** associate it with a particular category.
** 
** `http://msdn.microsoft.com/en-us/library/ee125584%28v=vs.85%29.aspx`
** 
** @clsid {A910187F-0C7A-45AC-92CC-59EDAFB77B53}
class SpObjectTokenCategory {
	internal Dispatch dispatch
	
	static const Str progId := "SAPI.SpObjectTokenCategory"

	new makeFromProgId() {
		this.dispatch = Dispatch.makeFromProgId(progId)
	}
	
	new makeFromDispatch(Dispatch dispatch) {
		this.dispatch = dispatch
	}


	// ---- Properties ----------------------------------------------------------------------------

	** The ID of the default token in the category.
	** 
	** The ID of the object is the path to its folder within the Speech configuration database.
	Str? default_ {
		get { dispatch.getProperty("Default").asStr }
		set { dispatch.setProperty("Default", it) }
	}

	** Returns the name of the object token category.
	Str? id {
		get { dispatch.getProperty("Id").asStr }
		private set { }
	}


	// ---- Methods -------------------------------------------------------------------------------

	** Returns a selection of SpObjectToken objects.
	ISpeechObjectTokens? enumerateTokens(Str? requiredAttributes := "", Str? optionalAttributes := "") {
		dispatch.call("EnumerateTokens", requiredAttributes, optionalAttributes).asType(ISpeechObjectTokens#)
	}

	** Returns the data key of the category in the speech configuration database.
	ISpeechDataKey? getDataKey(SpeechDataKeyLocation? location := SpeechDataKeyLocation.SDKLDefaultLocation) {
		dispatch.call("GetDataKey", location).asType(ISpeechDataKey#)
	}

	** Sets the ID of the category.
	Void setId(Str? id, Bool? createIfNotExist := false) {
		dispatch.call("SetId", id, createIfNotExist)
	}
}
