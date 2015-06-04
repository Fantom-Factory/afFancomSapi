
** Lists the access modes of a file stream.
** 
** `http://msdn.microsoft.com/en-us/library/ee125214%28v=vs.85%29.aspx`
enum class SpeechStreamFileMode {

	** Opens an existing file as read-only.
	** 
	** Value is 0 (0x0)
	SSFMOpenForRead,

	** [hidden] Opens an existing file as read-write. Not supported for wav files.
	** 
	** Value is 1 (0x1)
	SSFMOpenReadWrite,

	** [hidden] Opens an existing file as read-write. Else, it creates the file then opens it as 
	** read-write. Not supported for wav files.
	** 
	** Value is 2 (0x2)
	SSFMCreate,

	** Creates file even if file exists and so destroys or overwrites the existing file.
	** 
	** Value is 3 (0x3)
	SSFMCreateForWrite;

}
