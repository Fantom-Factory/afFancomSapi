using afFancom::Dispatch
using afFancom::Variant

** Provides control over the operation of real-time audio streams. 
** 
** `http://msdn.microsoft.com/en-us/library/ee125237%28v=vs.85%29.aspx`
** 
** @clsid {C62D9C91-7458-47F6-862D-1EF86FB0B278}
class ISpeechAudioStatus {
	internal Dispatch dispatch
	
	new makeFromDispatch(Dispatch dispatch) {
		this.dispatch = dispatch
	}


	// ---- Properties ----------------------------------------------------------------------------

	** Returns the current read or write position of the stream or device in bytes.
	Variant currentDevicePosition {
		get { dispatch.getProperty("CurrentDevicePosition") }
		private set { }
	}

	** Returns the current seek position in the stream or device in bytes.
	Variant currentSeekPosition {
		get { dispatch.getProperty("CurrentSeekPosition") }
		private set { }
	}

	** Returns the size of the free space in the stream or device in bytes.
	Int? freeBufferSpace {
		get { dispatch.getProperty("FreeBufferSpace").asInt }
		private set { }
	}

	** Returns the amount of data which can be read from or written to the stream or device 
	** without blocking.
	Int? nonBlockingIO {
		get { dispatch.getProperty("NonBlockingIO").asInt }
		private set { }
	}

	** Returns the state of the audio stream or device.
	SpeechAudioState? state {
		get { dispatch.getProperty("State").asEnum(SpeechAudioState#) }
		private set { }
	}

}
