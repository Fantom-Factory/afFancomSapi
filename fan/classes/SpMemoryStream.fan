using afFancom::Dispatch
using afFancom::Variant

** Supports audio stream operations in memory.
** 
** `http://msdn.microsoft.com/en-us/library/ee125570%28v=vs.85%29.aspx`
** 
** @clsid {5FB7EF7D-DFF4-468A-B6B7-2FCBD188F994}
class SpMemoryStream : ISpeechBaseStream {
	
	static const Str progId := "SAPI.SpMemoryStream"

	new makeFromProgId() : super.makeFromDispatch(Dispatch.makeFromProgId(progId)) { }
	
	new makeFromDispatch(Dispatch dispatch) : super(dispatch) { }


	// ---- Methods -------------------------------------------------------------------------------

	** Gets the contents of the stream.
	Variant getData() {
		dispatch.call("GetData")
	}

	** Sets the contents of the stream.
	Void setData(Variant? data) {
		dispatch.call("SetData", data)
	}
}
