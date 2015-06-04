using afFancom::Flag
using afFancom::Variant

** Lists the possible ways of displaying a word.
** 
** `http://msdn.microsoft.com/en-us/library/ee125194%28v=vs.85%29.aspx`
@Serializable
const class SpeechDisplayAttributes : Flag {

	** Does not insert any trailing spaces after words.
	** 
	** Value is 0 (0x0)
	static const SpeechDisplayAttributes SDA_No_Trailing_Space := SpeechDisplayAttributes(0, "SDA_No_Trailing_Space")

	** Inserts one trailing space, used for most words.
	** 
	** Value is 2 (0x2)
	static const SpeechDisplayAttributes SDA_One_Trailing_Space := SpeechDisplayAttributes(2, "SDA_One_Trailing_Space")

	** Inserts two trailing spaces, often used after a sentence's final period.
	** 
	** Value is 4 (0x4)
	static const SpeechDisplayAttributes SDA_Two_Trailing_Spaces := SpeechDisplayAttributes(4, "SDA_Two_Trailing_Spaces")

	** Consume leading space, often used for periods. If this is absent, the word should have a leading space by default. 
	** 
	** Value is 8 (0x8)
	static const SpeechDisplayAttributes SDA_Consume_Leading_Spaces := SpeechDisplayAttributes(8, "SDA_Consume_Leading_Spaces")


	new make(|This|? f := null) : super(f) { }
	new makeFromVariant(Variant variant) : super(variant) { }
	new makeFromDefinition(Int flag, Str? name := null) : super(flag, name) { }

}
