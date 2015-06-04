
** Lists the features of phonemes and visemes.
** 
** `http://msdn.microsoft.com/en-us/library/ee125218%28v=vs.85%29.aspx` 
enum class SpeechVisemeFeature {

	** Indicates that a viseme or phoneme has no stress or emphasis.
	** 
	** Value is 0 (0x0)
	SVF_None,

	** Indicates that a viseme or phoneme is stressed relative to the other phonemes within a word.
	** 
	** Value is 1 (0x1)
	SVF_Stressed,

	** Indicates that the word containing the viseme or phoneme is emphasized relative to the other words within a sentence.
	** 
	** Value is 2 (0x2)
	SVF_Emphasis;

}
