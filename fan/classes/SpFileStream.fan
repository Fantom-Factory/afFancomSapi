using afFancom::Dispatch
using afFancom::Variant

** Enables data streams to be read and written as files.
** 
** `http://msdn.microsoft.com/en-us/library/ee125548%28v=vs.85%29.aspx`
** 
** @clsid {947812B3-2AE1-4644-BA86-9E90DED7EC91}
class SpFileStream : ISpeechBaseStream {
	
	static const Str progId := "SAPI.SpFileStream"

	new makeFromProgId() : super.makeFromDispatch(Dispatch.makeFromProgId(progId)) { }

	new makeFromDispatch(Dispatch dispatch) : super(dispatch) { }


	// ---- Methods -------------------------------------------------------------------------------

	** Opens a filestream object for reading or writing.
	Void open(Str? fileName, SpeechStreamFileMode? fileMode := SpeechStreamFileMode.SSFMOpenForRead, Bool? doEvents := false) {
		dispatch.call("Open", fileName, fileMode, doEvents)
	}

	** Closes the filestream object.
	Void close() {
		dispatch.call("Close")
	}
}
