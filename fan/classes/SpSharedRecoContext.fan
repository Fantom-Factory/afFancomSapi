using afFancom::Dispatch

** Defines a recognition context.
** 
** `http://msdn.microsoft.com/en-us/library/ee125461%28v=vs.85%29.aspx`
**
** @clsid {47206204-5ECA-11D2-960F-00C04F8EE628}
class SpSharedRecoContext : ISpeechRecoContext {

	static const Str progId := "SAPI.SpSharedRecoContext"

	new makeFromProgId() : super.makeFromDispatch(Dispatch.makeFromProgId(progId)) { }

	new makeFromDispatch(Dispatch dispatch) : super(dispatch) { }

}
