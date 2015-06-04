using afFancom::Dispatch

** Represents a speech recognition engine.
** 
** `http://msdn.microsoft.com/en-us/library/ee125461%28v=vs.85%29.aspx`
**
** @clsid {41B89B6B-9399-11D2-9623-00C04F8EE628}
class SpInProcRecognizer : ISpeechRecognizer {

	static const Str progId := "Sapi.SpInprocRecognizer"

	new makeFromProgId() : super.makeFromDispatch(Dispatch.makeFromProgId(progId)) { }

	new makeFromDispatch(Dispatch dispatch) : super(dispatch) { }

}
