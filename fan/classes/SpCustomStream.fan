using afFancom::Dispatch
using afFancom::Variant

** Supports the use of existing IStream objects in SAPI.
** 
** `http://msdn.microsoft.com/en-us/library/ee125546%28v=vs.85%29.aspx`
** 
** @clsid {8DBEF13F-1948-4AA8-8CF0-048EEBED95D8}
class SpCustomStream : ISpeechBaseStream {
	
	static const Str progId := "SAPI.SpCustomStream"

	new makeFromProgId() : super.makeFromDispatch(Dispatch.makeFromProgId(progId)) { }
	
	new makeFromDispatch(Dispatch dispatch) : super(dispatch) { }


	// ---- Properties ----------------------------------------------------------------------------

	** Can not map 'VT_UNKNOWN' to a Fantom type
	** VT_UNKNOWN baseStream

}
