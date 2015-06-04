
** Lists the types of transitions for the speech recognition engine.
** 
** `http://msdn.microsoft.com/en-us/library/ee125198%28v=vs.85%29.aspx`
enum class SpeechGrammarRuleStateTransitionType {

	** Indicates there should be an epsilon transition. These are NULL transitions that can be 
	** traversed without recognizing anything.
	** 
	** Value is 0 (0x0)
	SGRSTTEpsilon,

	** Indicates there should be a word transition. These represent single words that the 
	** recognizer will recognize before advancing to the next state.
	** 
	** Value is 1 (0x1)
	SGRSTTWord,

	** Indicates there should be a rule transition. These represent transitions into sub-rules. 
	** This transition is only passed when a path through the sub-rule has been recognized.
	** 
	** Value is 2 (0x2)
	SGRSTTRule,

	** Indicates there should be a dictation transition. SGRSTTDictation is a special transition 
	** and may not be supported by all engines. This is used to embed dictation within a 
	** context-free grammar (CFG). Each transition means one word should be recognized.
	** 
	** Value is 3 (0x3)
	SGRSTTDictation,

	** Indicates there should be a wildcard transition. SGRSTTWildcard is a special transition 
	** and may not be supported by all engines. This indicates a transition that matches any word 
	** or words. The engine does not try and recognize the spoken words. The engine includes the 
	** string value WildcardInCFG as an attribute in its object token to inform the application 
	** that it is capable of supporting this.
	** 
	** Value is 4 (0x4)
	SGRSTTWildcard,

	** Indicates there should be a text buffer transition. SGRSTTTextBuffer is a special transition 
	** and may not be supported by all engines. This indicates that the engine is to recognize a 
	** sub-string of words from the text buffer, if it has been set. 
	** 
	** Value is 5 (0x5)
	SGRSTTTextBuffer;

}
