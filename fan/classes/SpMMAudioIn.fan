using afFancom::Dispatch

** Supports audio implementation for the standard Windows wave-in multimedia layer.
** 
** `http://msdn.microsoft.com/en-us/library/ee125573%28v=vs.85%29.aspx`
** 
** @clsid {CF3D2E50-53F2-11D2-960C-00C04F8EE628}
class SpMMAudioIn : ISpeechMMSysAudio {

	static const Str progId := "SAPI.SpMMAudioIn"

	new makeFromProgId() : super.makeFromDispatch(Dispatch.makeFromProgId(progId)) { }

	new makeFromDispatch(Dispatch dispatch) : super(dispatch) { }

}
