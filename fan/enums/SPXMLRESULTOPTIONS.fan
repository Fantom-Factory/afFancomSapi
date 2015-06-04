
** Used to designate whether the main result or the alternates are desired.
** 
** `http://msdn.microsoft.com/en-us/library/ee431881%28v=vs.85%29.aspx`
enum class SPXMLRESULTOPTIONS {

	** Indicates the main result is desired (the default setting).
	** 
	** Value is 0 (0x0)
	SPXRO_SML,

	** Indicates the alternate results are desired.
	** 
	** Value is 1 (0x1)
	SPXRO_Alternates_SML;

}
