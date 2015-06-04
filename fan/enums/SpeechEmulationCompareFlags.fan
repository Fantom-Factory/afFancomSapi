using afFancom::Flag
using afFancom::Variant

** Values of comparison options in emulation.
** 
** `http://msdn.microsoft.com/en-us/library/ee125195%28v=vs.85%29.aspx`
@Serializable
const class SpeechEmulationCompareFlags : Flag {

	** The comparison is case insensitive.
	** 
	** Value is 1 (0x1)
	static const SpeechEmulationCompareFlags SECFIgnoreCase := SpeechEmulationCompareFlags(1, "SECFIgnoreCase")

	** The comparison ignores Kana types.
	** 
	** Value is 65536 (0x10000)
	static const SpeechEmulationCompareFlags SECFIgnoreKanaType := SpeechEmulationCompareFlags(65536, "SECFIgnoreKanaType")

	** The comparison ignores width.
	** 
	** Value is 131072 (0x20000)
	static const SpeechEmulationCompareFlags SECFIgnoreWidth := SpeechEmulationCompareFlags(131072, "SECFIgnoreWidth")

	** The default comparison options (ignore case, Kana types, and width). 
	**
	** Value is 196609 (0x30001)
	static const SpeechEmulationCompareFlags SECFDefault := SpeechEmulationCompareFlags(196609, "SECFDefault")

	** The comparison does not allow for special characters.
	** 
	** Value is 536870912 (0x20000000)
	static const SpeechEmulationCompareFlags SECFNoSpecialChars := SpeechEmulationCompareFlags(536870912, "SECFNoSpecialChars")

	** The comparison....
	** 
	** Value is 1073741824 (0x40000000)
	static const SpeechEmulationCompareFlags SECFEmulateResult := SpeechEmulationCompareFlags(1073741824, "SECFEmulateResult")


	new make(|This|? f := null) : super(f) { }
	new makeFromVariant(Variant variant) : super(variant) { }
	new makeFromDefinition(Int flag, Str? name := null) : super(flag, name) { }

}
