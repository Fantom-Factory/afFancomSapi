using afFancom::Flag
using afFancom::Variant

** Lists the possible attributes of a grammar rule.
** 
** `http://msdn.microsoft.com/en-us/library/ee125210%28v=vs.85%29.aspx`
@Serializable
const class SpeechRuleAttributes : Flag {

	static const SpeechRuleAttributes None					:= SpeechRuleAttributes	( 0, "None")

	** Specifies that the rule is defined as a top-level rule. Top-level rules are the entry points 
	** into the grammar and can be activated or deactivated programmatically. Set a rule as 
	** top-level by using the TOPLEVEL attribute in the Speech Text Grammar Format.
	**
	** Value is 1 (0x1)
	static const SpeechRuleAttributes SRATopLevel := SpeechRuleAttributes(1, "SRATopLevel")

	** Specifies that the rule is defined as a top-level rule that is activated by default. This 
	** can be set using the TOPLEVEL="ACTIVE" attribute-value pair in the Speech Text Grammar 
	** Format.
	**
	** Value is 2 (0x2)
	static const SpeechRuleAttributes SRADefaultToActive := SpeechRuleAttributes(2, "SRADefaultToActive")

	** Specifies the rule is exported and hence can be referred to by a rule in another grammar. 
	** This can be set using the 'EXPORT="YES"' attribute-value pair in the Speech Text Grammar 
	** Format.
	**
	** Value is 4 (0x4)
	static const SpeechRuleAttributes SRAExport := SpeechRuleAttributes(4, "SRAExport")

	** Specifies the rule is imported from another grammar and is therefore not defined in this 
	** grammar.
	**
	** Value is 8 (0x8)
	static const SpeechRuleAttributes SRAImport := SpeechRuleAttributes(8, "SRAImport")

	** Specifies the rule has an interpreter (custom C/C++ code implementing the ISpCFGInterpreter 
	** interface) associated with it.
	**
	** Value is 16 (0x10)
	static const SpeechRuleAttributes SRAInterpreter := SpeechRuleAttributes(16, "SRAInterpreter")

	** Specifies the rule is dynamic (can be changed programmatically through the ISpGrammarBuilder 
	** interface). Note that the CFG must be loaded with the SPLO_DYNAMIC flag to enable changes at 
	** run time.
	**
	** Value is 32 (0x20)
	static const SpeechRuleAttributes SRADynamic := SpeechRuleAttributes(32, "SRADynamic")

	** Specifies whether this is the root rule in the grammar. This is only meaningful for SRGS 
	** grammars. 
	**
	** Value is 64 (0x40)
	static const SpeechRuleAttributes SRARoot := SpeechRuleAttributes(64, "SRARoot")


	new make(|This|? f := null) : super(f) { }
	new makeFromVariant(Variant variant) : super(variant) { }
	new makeFromDefinition(Int flag, Str? name := null) : super(flag, name) { }

}
