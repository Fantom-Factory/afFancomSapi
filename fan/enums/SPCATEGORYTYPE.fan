
** Lists the different states of Speech Recognizer as categories.
** 
** `http://msdn.microsoft.com/en-us/library/ee431836%28v=vs.85%29.aspx`
enum class SPCATEGORYTYPE {

	** Flag indicating the command category. This category includes commands such as "Open 
	** Notepad."
	** 
	** Value is 0 (0x0)
	SPCT_COMMAND,

	** Flag indicating the dictation category. This category indicates that recognized speech 
	** should be treated as free text.
	** 
	** Value is 1 (0x1)
	SPCT_DICTATION,

	** Flag indicating the sleep category. This category indicates that the recognizer is ignoring 
	** all speech except "Start listening."
	** 
	** Value is 2 (0x2)
	SPCT_SLEEP,

	** Flag indicating the command subcategory.
	** 
	** Value is 3 (0x3)
	SPCT_SUB_COMMAND,

	** Flag indicating the dictation subcategory. This category includes dictatation subcommands 
	** that bring up the correction dialog. For example, saying "Select All" while in dictation 
	** mode.
	** 
	** Value is 4 (0x4)
	SPCT_SUB_DICTATION;

}
