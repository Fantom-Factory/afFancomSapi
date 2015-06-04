using gfx
using fwt
using afFancom
using afFancomSapi

class SpeechRecognition {

	static Void main(Str[] args) {
		ComThread.initSta()

		recoCtx	:= SpInProcRecoContext()

		// initialise the input stream / microphone
		// not needed with an SpSharedRecoContext
		category := SpObjectTokenCategory()
		category.setId(SpeechStringConstants.SpeechCategoryAudioIn)
		token := SpObjectToken()
		token.setId(category.default_)
		recoCtx.recognizer.audioInput = token

		// register some commands to listen for
		grammar	:= recoCtx.createGrammar
		rule	 := grammar.rules.add("awesome", SpeechRuleAttributes.SRATopLevel)
		rule.initialState.addWordTransition(null, "Kick Ass")
		rule.initialState.addWordTransition(null, "Chew Bubblegum")
		grammar.rules.commit
		grammar.cmdSetRuleState("awesome", SpeechRuleState.SGDSActive)

		// register an event sink
		recoCtx.withEvents(SpeechRecognition())

		window := Window {
			it.size = Size(320, 240)
			it.title = "Say Kick Ass!"
		}.open

		ComThread.release
	}

	Void onRecognition(Int streamNumber, Variant streamPosition, SpeechRecognitionType recognitionType, ISpeechRecoResult result) {
		utterance := result.phraseInfo.getText.capitalize
		if (utterance.contains("gum"))
			Obj.echo("Chewing gum.")
		else
			Obj.echo("Hur hur, you said, 'Ass'!!!")
	}
}
