
** Lists the states of a recognition context.
** 
** `http://msdn.microsoft.com/en-us/library/ee125205%28v=vs.85%29.aspx`
enum class SpeechRecoContextState {

	** Specifies that grammars associated with this recognition context are disabled.
	** 
	** Value is 0 (0x0)
	SRCS_Disabled,

	** Specifies that grammars associated with this recognition context are enabled. 
	** 
	** Value is 1 (0x1)
	SRCS_Enabled;

}
