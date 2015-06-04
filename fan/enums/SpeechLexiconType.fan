using afFancom::Flag
using afFancom::Variant

** Lists the allowed lexicon types.
** 
** `http://msdn.microsoft.com/en-us/library/ee125202%28v=vs.85%29.aspx`
@Serializable
const class SpeechLexiconType : Flag {

	** Indicates the user lexicon. Each Windows user has a unique user lexicon.
	** 
	** Value is 1 (0x1)
	static const SpeechLexiconType SLTUser := SpeechLexiconType(1, "SLTUser")

	** Indicates the application lexicon. An application lexicon is shared by all users.
	** 
	** Value is 2 (0x2)
	static const SpeechLexiconType SLTApp := SpeechLexiconType(2, "SLTApp")


	new make(|This|? f := null) : super(f) { }
	new makeFromVariant(Variant variant) : super(variant) { }
	new makeFromDefinition(Int flag, Str? name := null) : super(flag, name) { }

}
