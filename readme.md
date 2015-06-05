#Fancom SAPI v1.0.4
---
[![Written in: Fantom](http://img.shields.io/badge/written%20in-Fantom-lightgray.svg)](http://fantom.org/)
[![pod: v1.0.4](http://img.shields.io/badge/pod-v1.0.4-yellow.svg)](http://www.fantomfactory.org/pods/afFancomSapi)
![Licence: MIT](http://img.shields.io/badge/licence-MIT-blue.svg)

## Overview

Fancom Sapi is a complete collection of classes that wrap [Microsoft Speech API (SAPI) 5.4](http://msdn.microsoft.com/en-us/library/ee125186%28v=vs.85%29.aspx) when running Fantom on a JVM.

## Install

Install `Fancom SAPI` with the Fantom Repository Manager ( [fanr](http://fantom.org/doc/docFanr/Tool.html#install) ):

    C:\> fanr install -r http://repo.status302.com/fanr/ afFancomSapi

To use in a [Fantom](http://fantom.org/) project, add a dependency to `build.fan`:

    depends = ["sys 1.0", ..., "afFancomSapi 1.0"]

## Documentation

Full API & fandocs are available on the [Fantom Pod Repository](http://pods.fantomfactory.org/pods/afFancomSapi/).

## Speech

Making your computer speak couldn't be simpler than:

    SpVoice().speak("It's time to kick ass 'n' chew bubble gum!")

A more complete example that initialises proper COM threading, lists available voices, and speaks in the background is:

```
static Void main(Str[] args) {
    afFancom::ComThread.initSta

    spVoice := afFancomSapi::SpVoice()

    Obj.echo("Available voices:")
    spVoice.getVoices.each {
        Obj.echo(" - ${it->getDescription}")
    }

    name := spVoice.voice.getDescription.split('-')[0]
    spVoice.speak("Hello, I'm $name", SpeechVoiceSpeakFlags.SVSFlagsAsync)

    concurrent::Actor.sleep(3sec)

    afFancom::ComThread.release
}
```

## Speech Recognition

Speech recognition is a bit more involved as you need to initialise an input stream, register some grammar to listen for and set up an event sink to recieve callbacks. Never the less, a complete example is given below:

```
using gfx
using fwt
using afFancom
using afFancomSapi

class SpeechRecognition {

    static Void main(Str[] args) {
        ComThread.initSta

        recoCtx  := SpInProcRecoContext()

        // initialise the input stream / microphone
        // not needed with an SpSharedRecoContext
        category := SpObjectTokenCategory()
        category.setId(SpeechStringConstants.SpeechCategoryAudioIn)
        token := SpObjectToken()
        token.setId(category.default_)
        recoCtx.recognizer.audioInput = token

        // register some commands to listen for
        grammar  := recoCtx.createGrammar
        rule   := grammar.rules.add("awesome", SpeechRuleAttributes.SRATopLevel)
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
```

See [ISpeechRecoContext (Events)](http://msdn.microsoft.com/en-us/library/ee125411(v=vs.85).aspx) for a list of possible callback events.

