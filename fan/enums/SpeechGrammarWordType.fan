
** The `SpeechGrammarWordType` enumeration lists the types of words in a grammar.
** 
** `http://msdn.microsoft.com/en-us/library/ee125200%28v=vs.85%29.aspx`
enum class SpeechGrammarWordType {

	** Each word to be added is in display form. That is, it possibly will have to be converted 
	** into lexical form(s). For example, the word "23" (display form) would have to converted into 
	** "twenty three" (lexical form). This is currently not implemented.
	** 
	** Value is 0 (0x0)
	SGDisplay,

	** Each word to be added is in lexical form and can be used to access the lexicon. This type is 
	** specified in the speech text grammar format as '<GRAMMAR WORDTYPE="LEXICAL">'.
	** 
	** Value is 1 (0x1)
	SGLexical,

	** Each word is specified solely by its pronunciation. This is currently not implemented.
	**  
	** Value is 2 (0x2)
	SGPronounciation,

	** Switches off the handling of special characters in the grammar. For example "*" normally 
	** means dictation and "?" means wildcard, but this flag means that "*" means asterisk, and 
	** "?" means ellipsis. 
	** 
	** Value is 3 (0x3)
	SGLexicalNoSpecialChars;

}
