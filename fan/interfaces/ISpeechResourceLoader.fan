using afFancom::Dispatch
using afFancom::Variant

** Gives applications control over loading resources. For example, applications may want to cache 
** remote resources, enforce custom security policies, or redirect resources to other locations. 
** 
** `http://msdn.microsoft.com/en-us/library/ee125518%28v=vs.85%29.aspx`
** 
** @clsid {B9AC5783-FCD0-4B21-B119-B4F8DA8FD2C3}
class ISpeechResourceLoader {
	internal Dispatch dispatch
	
	new makeFromDispatch(Dispatch dispatch) {
		this.dispatch = dispatch
	}



	// ---- Methods -------------------------------------------------------------------------------

	** Gets a local copy of the specified speech resource.
	Void getLocalCopy(Str? bstrResourceUri, Str? pbstrLocalPath, Str? pbstrMIMEType, Str? pbstrRedirectUrl) {
		dispatch.call("GetLocalCopy", bstrResourceUri, pbstrLocalPath, pbstrMIMEType, pbstrRedirectUrl)
	}

	** Can not map 'VT_UNKNOWN' to a Fantom type
	** Void loadResource

	** Releases the local copy of the specified speech resource.
	Void releaseLocalCopy(Str? pbstrLocalPath) {
		dispatch.call("ReleaseLocalCopy", pbstrLocalPath)
	}
}
