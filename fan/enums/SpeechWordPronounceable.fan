
** Lists the possible return values from the 'IsPronounceable' method of the `ISpeechRecoGrammar` interface.
enum class SpeechWordPronounceable {

	** The word is not pronounceable by the SR engine, and is not located in the lexicon and/or the engine's dictionary.
	** 
	** Value is 0 (0x0)
	SWPUnknownWordUnpronounceable,

	** The word is pronounceable by the SR engine, but is not located in the lexicon and/or the engine's dictionary.
	** 
	** Value is 1 (0x1)
	SWPUnknownWordPronounceable,

	** The word is pronounceable by the SR engine, and is located in the lexicon and/or the engine's dictionary.
	** 
	** Value is 2 (0x2)
	SWPKnownWordPronounceable;

}
