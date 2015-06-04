using afFancom::Dispatch

** Provides access to lexicons. Lexicons contain information about words that can be recognized 
** or spoken.
** 
** `http://msdn.microsoft.com/en-us/library/ee125566%28v=vs.85%29.aspx`
** 
** @clsid {0655E396-25D0-11D3-9C26-00C04F8EF87C}
class SpLexicon : ISpeechLexicon {

	static const Str progId := "SAPI.SpLexicon"

	new makeFromProgId() : super.makeFromDispatch(Dispatch.makeFromProgId(progId)) { }

	new makeFromDispatch(Dispatch dispatch) : super(dispatch) { }

}
