using afFancom::Flag
using afFancom::Variant

** Lists the various values of a grammar's tag-format attribute.
** 
** `http://msdn.microsoft.com/en-us/library/ee431865%28v=vs.85%29.aspx`
@Serializable
const class SPSEMANTICFORMAT : Flag {

	** Indicates that the semantic properties are derived from the property name/value associations 
	** declared inside a SAPI text grammar.
	** 
	** Value is 0 (0x0)
	static const SPSEMANTICFORMAT SPSMF_SAPI_PROPERTIES := SPSEMANTICFORMAT(0, "SPSMF_SAPI_PROPERTIES")

	** Indicates that the value of the tag-format attribute is "semantics-ms/1.0".
	** 
	** Value is 1 (0x1)
	static const SPSEMANTICFORMAT SPSMF_SRGS_SEMANTICINTERPRETATION_MS := SPSEMANTICFORMAT(1, "SPSMF_SRGS_SEMANTICINTERPRETATION_MS")

	** Indicates that the value of the tag-format attribute is "properties-ms/1.0".
	** 
	** Value is 2 (0x2)
	static const SPSEMANTICFORMAT SPSMF_SRGS_SAPIPROPERTIES := SPSEMANTICFORMAT(2, "SPSMF_SRGS_SAPIPROPERTIES")

	** Reserved for system use.
	** 
	** Value is 4 (0x4)
	static const SPSEMANTICFORMAT SPSMF_UPS := SPSEMANTICFORMAT(4, "SPSMF_UPS")

	** Indicates that the value of the tag-format attribute is either "semantics/1.0" or 
	** "semantics/1.0-literals".
	** 
	** Value is 8 (0x8)
	static const SPSEMANTICFORMAT SPSMF_SRGS_SEMANTICINTERPRETATION_W3C := SPSEMANTICFORMAT(8, "SPSMF_SRGS_SEMANTICINTERPRETATION_W3C")


	new make(|This|? f := null) : super(f) { }
	new makeFromVariant(Variant variant) : super(variant) { }
	new makeFromDefinition(Int flag, Str? name := null) : super(flag, name) { }

}
