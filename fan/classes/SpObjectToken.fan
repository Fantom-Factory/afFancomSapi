using afFancom::Dispatch
using afFancom::Variant

** Represents an available resource of a type used by SAPI.
** 
** `http://msdn.microsoft.com/en-us/library/ee125595%28v=vs.85%29.aspx`
**
** @clsid {EF411752-3736-4CB4-9C8C-8EF4CCB58EFE}
class SpObjectToken {
	internal Dispatch dispatch
	
	static const Str progId := "SAPI.SpObjectToken"

	new makeFromProgId() {
		this.dispatch = Dispatch.makeFromProgId(progId)
	}
	
	new makeFromDispatch(Dispatch dispatch) {
		this.dispatch = dispatch
	}


	// ---- Properties ----------------------------------------------------------------------------

	** Returns the category of the object token .
	SpObjectTokenCategory? category {
		get { dispatch.getProperty("Category").asType(SpObjectTokenCategory#) }
		private set { }
	}

	** Returns the data key of the object token as an 'ISpeechDataKey' object.
	ISpeechDataKey? dataKey {
		get { dispatch.getProperty("DataKey").asType(ISpeechDataKey#) }
		private set { }
	}

	** Returns the ID of the token.
	Str? id {
		get { dispatch.getProperty("Id").asStr }
		private set { }
	}


	// ---- Methods -------------------------------------------------------------------------------

	** Can not map 'VT_UNKNOWN' to a Fantom type
	** VT_UNKNOWN createInstance

	** Can not map 'VT_UNKNOWN' to a Fantom type
	** Void displayUI

	** Returns the value of the specified attribute.
	Str? getAttribute(Str? attributeName) {
		dispatch.call("GetAttribute", attributeName).asStr
	}

	** Returns the name of the resource represented by the object token.
	Str? getDescription(Int? locale := 0) {
		dispatch.call("GetDescription", locale).asStr
	}

	** Creates a storage file for data associated with the object token.
	Str? getStorageFileName(Str? objectStorageCLSID, Str? keyName, Str? fileName, SpeechTokenShellFolder? folder) {
		dispatch.call("GetStorageFileName", objectStorageCLSID, keyName, fileName, folder).asStr
	}

	** Can not map 'VT_UNKNOWN' to a Fantom type
	** Bool isUISupported

	** Indicates whether the token matches specified attributes.
	Bool? matchesAttributes(Str? attributes) {
		dispatch.call("MatchesAttributes", attributes).asBool
	}

	** Removes the token from the speech configuration database.
	Void remove(Str? objectStorageCLSID) {
		dispatch.call("Remove", objectStorageCLSID)
	}

	** Removes a storage file associated with the object token.
	Void removeStorageFileName(Str? objectStorageCLSID, Str? keyName, Bool? deleteFile) {
		dispatch.call("RemoveStorageFileName", objectStorageCLSID, keyName, deleteFile)
	}

	** Associates a new object token with a resource by setting its ID property.
	Void setId(Str? id, Str? categoryID := "", Bool? createIfNotExist := false) {
		dispatch.call("SetId", id, categoryID, createIfNotExist)
	}
}
