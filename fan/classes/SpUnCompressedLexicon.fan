using afFancom::Dispatch

** Provides access to lexicons, which contain information about words that can be recognized or 
** spoken.
** 
** `http://msdn.microsoft.com/en-us/library/ee125618%28v=vs.85%29.aspx`
** 
** @clsid {C9E37C15-DF92-4727-85D6-72E5EEB6995A}
class SpUnCompressedLexicon : ISpeechLexicon {

	static const Str progId := "SAPI.SpUncompressedLexicon"

	new makeFromProgId() : super.makeFromDispatch(Dispatch.makeFromProgId(progId)) { }

	new makeFromDispatch(Dispatch dispatch) : super(dispatch) { }

}
