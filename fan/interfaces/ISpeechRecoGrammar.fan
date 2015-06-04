using afFancom::Dispatch
using afFancom::Variant

** Enables applications to manage the words and phrases for the SR engine.
** 
** `http://msdn.microsoft.com/en-us/library/ee125481%28v=vs.85%29.aspx`
**
** @clsid {B6D6F79F-2158-4E50-B5BC-9A9CCD852A09}
class ISpeechRecoGrammar {
	internal Dispatch dispatch
	
	new makeFromDispatch(Dispatch dispatch) {
		this.dispatch = dispatch
	}


	// ---- Properties ----------------------------------------------------------------------------

	** Returns the Id assigned to the grammar when it was created.
	Variant id {
		get { dispatch.getProperty("Id") }
		private set { }
	}

	** Returns the RecoContext object that created this grammar.
	ISpeechRecoContext? recoContext {
		get { dispatch.getProperty("RecoContext").asType(ISpeechRecoContext#) }
		private set { }
	}

	** Returns the collection of grammar rules in the RecoGrammar.
	ISpeechGrammarRules? rules {
		get { dispatch.getProperty("Rules").asType(ISpeechGrammarRules#) }
		private set { }
	}

	** Gets and sets the operational status of the speech grammar.
	SpeechGrammarState? state {
		get { dispatch.getProperty("State").asEnum(SpeechGrammarState#) }
		set { dispatch.setProperty("State", it) }
	}


	// ---- Methods -------------------------------------------------------------------------------

	** Loads a command and control grammar from the specified file.
	** 
	** Only seems to load a .srgs file and not a SAPI .cfg file.
	** 
	** @see `http://stackoverflow.com/questions/546428/how-do-i-load-a-grammar-xml-file-that-uses-sapi-5-3-tags`
	Void cmdLoadFromFile(Uri fileUri, SpeechLoadOption? loadOption := SpeechLoadOption.SLOStatic) {
		filePath := fileUri.toFile.normalize.osPath
		if (!fileUri.toFile.exists)
			throw IOErr("Could not find file '$filePath'")
		dispatch.call("CmdLoadFromFile", filePath, loadOption)
	}

	** Loads a compiled speech grammar from memory.
	Void cmdLoadFromMemory(Variant? grammarData, SpeechLoadOption? loadOption := SpeechLoadOption.SLOStatic) {
		dispatch.call("CmdLoadFromMemory", grammarData, loadOption)
	}

	** Loads a speech grammar from a COM object.
	Void cmdLoadFromObject(Str? classId, Str? grammarName, SpeechLoadOption? loadOption := SpeechLoadOption.SLOStatic) {
		dispatch.call("CmdLoadFromObject", classId, grammarName, loadOption)
	}

	** Loads a proprietary speech grammar.
	Void cmdLoadFromProprietaryGrammar(Str? proprietaryGuid, Str? proprietaryString, Variant? proprietaryData, SpeechLoadOption? loadOption := SpeechLoadOption.SLOStatic) {
		dispatch.call("CmdLoadFromProprietaryGrammar", proprietaryGuid, proprietaryString, proprietaryData, loadOption)
	}

	** Loads a command and control grammar from a Win32 resource.
	Void cmdLoadFromResource(Int? hModule, Variant? resourceName, Variant? resourceType, Int? languageId, SpeechLoadOption? loadOption := SpeechLoadOption.SLOStatic) {
		dispatch.call("CmdLoadFromResource", hModule, resourceName, resourceType, languageId, loadOption)
	}

	** Activates or deactivates a rule by its rule ID.
	Void cmdSetRuleIdState(Int? ruleId, SpeechRuleState? state) {
		dispatch.call("CmdSetRuleIdState", ruleId, state)
	}

	** Activates or deactivates a rule by its rule name.
	Void cmdSetRuleState(Str? name, SpeechRuleState? state) {
		dispatch.call("CmdSetRuleState", name, state)
	}

	** Sets the dictation topic state.
	Void dictationLoad(Str? topicName := "", SpeechLoadOption? loadOption := SpeechLoadOption.SLOStatic) {
		dispatch.call("DictationLoad", topicName, loadOption)
	}

	** Sets the dictation topic state.
	Void dictationSetState(SpeechRuleState? state) {
		dispatch.call("DictationSetState", state)
	}

	** Unloads the active dictation topic from the grammar.
	Void dictationUnload() {
		dispatch.call("DictationUnload")
	}

	** Determines if a word has a pronunciation.
	SpeechWordPronounceable? isPronounceable(Str? word) {
		dispatch.call("IsPronounceable", word).asEnum(SpeechWordPronounceable#)
	}

	** Clears all grammar rules and resets the grammar's language to NewLanguage.
	Void reset(Int? newLanguage := 0) {
		dispatch.call("Reset", newLanguage)
	}

	** Sets the range of text selection information in a word sequence data buffer.
	Void setTextSelection(SpTextSelectionInformation? info) {
		dispatch.call("SetTextSelection", info)
	}

	** Defines a word sequence data buffer for use by the SR engine.
	Void setWordSequenceData(Str? text, Int? textLength, SpTextSelectionInformation? info) {
		dispatch.call("SetWordSequenceData", text, textLength, info)
	}
}
