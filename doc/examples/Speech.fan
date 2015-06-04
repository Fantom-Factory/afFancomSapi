using concurrent
using afFancom
using afFancomSapi

class Speech {
	
	static Void main(Str[] args) {
		ComThread.initSta
		
		spVoice := SpVoice()
		
		Obj.echo("Available voices:")
		spVoice.getVoices.each {
			Obj.echo(" - ${it->getDescription}")
		}
		
		name := spVoice.voice.getDescription.split('-')[0]
		spVoice.speak("Hello, I'm $name", SpeechVoiceSpeakFlags.SVSFlagsAsync)
		
		Actor.sleep(3sec)
		
		ComThread.release
	}
}