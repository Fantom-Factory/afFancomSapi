using afFancom::Dispatch

** Supports audio implementation for the standard Windows wave-out multimedia layer.
** 
** `http://msdn.microsoft.com/en-us/library/ee125577%28v=vs.85%29.aspx`
** 
** @clsid {A8C680EB-3D32-11D2-9EE7-00C04F797396}
class SpMMAudioOut : ISpeechMMSysAudio {

	static const Str progId := "SAPI.SpMMAudioOut"

	new makeFromProgId() : super.makeFromDispatch(Dispatch.makeFromProgId(progId)) { }

	new makeFromDispatch(Dispatch dispatch) : super(dispatch) { }

}
