
** Lists the options available when loading a speech grammar.
** 
** `http://msdn.microsoft.com/en-us/library/ee125203%28v=vs.85%29.aspx`
enum class SpeechLoadOption {

	** Specifies that the grammar is loaded statically. 
	** 
	** Value is 0 (0x0)
	SLOStatic,

	** Specifies that the grammar is loaded dynamically, meaning that rules can be modified and 
	** committed at run time. 
	** 
	** Value is 1 (0x1)
	SLODynamic;

}
