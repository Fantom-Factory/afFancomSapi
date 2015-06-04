using afFancom::Dispatch

** Represents a speech recognition engine.
** 
** `http://msdn.microsoft.com/en-us/library/ee125461%28v=vs.85%29.aspx`
**
** @clsid {3BEE4890-4FE9-4A37-8C1E-5E7E12791C1F}
class SpSharedRecognizer : ISpeechRecognizer {

	static const Str progId := "Sapi.SpSharedRecognizer"

	new makeFromProgId() : super.makeFromDispatch(Dispatch.makeFromProgId(progId)) { }

	new makeFromDispatch(Dispatch dispatch) : super(dispatch) { }

}
