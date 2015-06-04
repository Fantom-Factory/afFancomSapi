using afFancom::Dispatch
using afFancom::Variant

** Provides read and write access to the speech configuration database.
** 
** `http://msdn.microsoft.com/en-us/library/ee125263%28v=vs.85%29.aspx`
** 
** @clsid {CE17C09B-4EFA-44D5-A4C9-59D9585AB0CD}
class ISpeechDataKey {
	internal Dispatch dispatch
	
	new makeFromDispatch(Dispatch dispatch) {
		this.dispatch = dispatch
	}



	// ---- Methods -------------------------------------------------------------------------------

	** Creates the specified subkey within the data key.
	ISpeechDataKey? createKey(Str? subKeyName) {
		dispatch.call("CreateKey", subKeyName).asType(ISpeechDataKey#)
	}

	** Deletes the specified subkey from the data key.
	Void deleteKey(Str? subKeyName) {
		dispatch.call("DeleteKey", subKeyName)
	}

	** Deletes the specified value from the data key.
	Void deleteValue(Str? valueName) {
		dispatch.call("DeleteValue", valueName)
	}

	** Returns the name of one subkey of the data key, specified by its index.
	Str? enumKeys(Int? index) {
		dispatch.call("EnumKeys", index).asStr
	}

	** Returns the name of one value of the data key, specified by its index.
	Str? enumValues(Int? index) {
		dispatch.call("EnumValues", index).asStr
	}

	** Gets the specified binary value from the data key.
	Variant getBinaryValue(Str? valueName) {
		dispatch.call("GetBinaryValue", valueName)
	}

	** Gets the specified Long value from the data key.
	Int? getLongValue(Str? valueName) {
		dispatch.call("GetLongValue", valueName).asInt
	}

	** 	Gets the specified String value from the data key.
	Str? getStringValue(Str? valueName) {
		dispatch.call("GetStringValue", valueName).asStr
	}

	** Opens the specified subkey of the data key as another data key object.
	ISpeechDataKey? openKey(Str? subKeyName) {
		dispatch.call("OpenKey", subKeyName).asType(ISpeechDataKey#)
	}

	** Sets the specified binary value in the data key.
	Void setBinaryValue(Str? valueName, Variant? value) {
		dispatch.call("SetBinaryValue", valueName, value)
	}

	** Sets the specified Long value in the data key.
	Void setLongValue(Str? valueName, Int? value) {
		dispatch.call("SetLongValue", valueName, value)
	}

	** Sets the specified String value in the data key.
	Void setStringValue(Str? valueName, Str? value) {
		dispatch.call("SetStringValue", valueName, value)
	}
}
