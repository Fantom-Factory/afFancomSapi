using afFancom::Flag
using afFancom::Variant

** Lists flags indicating portions of a recognition result to be removed or eliminated once they 
** are no longer needed.
@Serializable
const class SpeechDiscardType : Flag {

	** Removes the property tree.
	** 
	** Value is 1 (0x1)
	static const SpeechDiscardType SDTProperty := SpeechDiscardType(1, "SDTProperty")

	** Removes the phrase replacement text for inverse text normalization.
	** 
	** Value is 2 (0x2)
	static const SpeechDiscardType SDTReplacement := SpeechDiscardType(2, "SDTReplacement")

	** Removes the non-top level rule tree information for a phrase.
	** 
	** Value is 4 (0x4)
	static const SpeechDiscardType SDTRule := SpeechDiscardType(4, "SDTRule")

	** Removes the display text.
	** 
	** Value is 8 (0x8)
	static const SpeechDiscardType SDTDisplayText := SpeechDiscardType(8, "SDTDisplayText")

	** Removes the lexicon from text.
	** 
	** Value is 16 (0x10)
	static const SpeechDiscardType SDTLexicalForm := SpeechDiscardType(16, "SDTLexicalForm")

	** Removes the pronunciation text.
	** Value is 32 (0x20)
	static const SpeechDiscardType SDTPronunciation := SpeechDiscardType(32, "SDTPronunciation")

	** Removes the audio data that is attached to a phrase. However, the audio has to have been 
	** both set and retained.
	** Value is 64 (0x40)
	static const SpeechDiscardType SDTAudio := SpeechDiscardType(64, "SDTAudio")

	** Removes the alternate data that is attached to a phrase. Discarding alternates loses the 
	** words permanently and they cannot be retrieved.
	** Value is 128 (0x80)
	static const SpeechDiscardType SDTAlternates := SpeechDiscardType(128, "SDTAlternates")

	** Remove all the features above.
	** 
	** Value is 255 (0xFF)
	static const SpeechDiscardType SDTAll := SpeechDiscardType(255, "SDTAll")


	new make(|This|? f := null) : super(f) { }
	new makeFromVariant(Variant variant) : super(variant) { }
	new makeFromDefinition(Int flag, Str? name := null) : super(flag, name) { }

}
