using afFancom::Dispatch

** Defines a recognition context.
** 
** `http://msdn.microsoft.com/en-us/library/ee125461%28v=vs.85%29.aspx`
**
** @clsid {73AD6842-ACE0-45E8-A4DD-8795881A2C2A}
class SpInProcRecoContext : ISpeechRecoContext {

	static const Str progId := "SAPI.SpInProcRecoContext"

	new makeFromProgId() : super.makeFromDispatch(Dispatch.makeFromProgId(progId)) { }

	new makeFromDispatch(Dispatch dispatch) : super(dispatch) { }

}
