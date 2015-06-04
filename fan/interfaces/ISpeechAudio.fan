using afFancom::Dispatch
using afFancom::Variant

** Supports the control of real-time audio streams, such as those connected to a live microphone or 
** telephone line.
** 
** `http://msdn.microsoft.com/en-us/library/ee125237%28v=vs.85%29.aspx`
**
** @clsid {CFF8E175-019E-11D3-A08E-00C04F8EF9B5}
class ISpeechAudio : ISpeechBaseStream {

	new makeFromDispatch(Dispatch dispatch) : super(dispatch) { }


	// ---- Properties ----------------------------------------------------------------------------

	ISpeechAudioBufferInfo? bufferInfo {
		get { dispatch.getProperty("BufferInfo").asType(ISpeechAudioBufferInfo#) }
		private set { }
	}

	Int? bufferNotifySize {
		get { dispatch.getProperty("BufferNotifySize").asInt }
		set { dispatch.setProperty("BufferNotifySize", it) }
	}

	SpAudioFormat? defaultFormat {
		get { dispatch.getProperty("DefaultFormat").asType(SpAudioFormat#) }
		private set { }
	}

	Int? eventHandle {
		get { dispatch.getProperty("EventHandle").asInt }
		private set { }
	}

	** Returns the audio status as an `ISpeechAudioStatus` object.
	ISpeechAudioStatus? status {
		get { dispatch.getProperty("Status").asType(ISpeechAudioStatus#) }
		private set { }
	}

	Int? volume {
		get { dispatch.getProperty("Volume").asInt }
		set { dispatch.setProperty("Volume", it) }
	}


	// ---- Methods -------------------------------------------------------------------------------

	** Sets the audio state with a SpeechAudioState constant.
	Void setState(SpeechAudioState? state) {
		dispatch.call("SetState", state)
	}

}
