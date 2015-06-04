using afFancom::Dispatch
using afFancom::Variant

** Supports audio implementation for the standard Windows wave-in multimedia layer.
** 
** `http://msdn.microsoft.com/en-us/library/ee125573%28v=vs.85%29.aspx`
** 
** @clsid {3C76AF6D-1FD7-4831-81D1-3B71D5A13C44}
class ISpeechMMSysAudio {
	internal Dispatch dispatch
	
	new makeFromDispatch(Dispatch dispatch) {
		this.dispatch = dispatch
	}


	// ---- Properties ----------------------------------------------------------------------------

	** Returns the audio buffer information as an ISpeechAudioBufferInfo object.
	ISpeechAudioBufferInfo? bufferInfo {
		get { dispatch.getProperty("BufferInfo").asType(ISpeechAudioBufferInfo#) }
		private set { }
	}

	** Gets and sets the audio stream buffer size information.
	Int? bufferNotifySize {
		get { dispatch.getProperty("BufferNotifySize").asInt }
		set { dispatch.setProperty("BufferNotifySize", it) }
	}

	** Returns the default audio format as an SpAudioFormat object.
	SpAudioFormat? defaultFormat {
		get { dispatch.getProperty("DefaultFormat").asType(SpAudioFormat#) }
		private set { }
	}

	** Gets and sets the multimedia device ID that is used by the audio object.
	Int? deviceId {
		get { dispatch.getProperty("DeviceId").asInt }
		set { dispatch.setProperty("DeviceId", it) }
	}

	** Returns a Win32 event handle that applications can use to wait for status changes in the I/O 
	** stream.
	Int? eventHandle {
		get { dispatch.getProperty("EventHandle").asInt }
		private set { }
	}

	** Gets and sets the cached wave format of the stream as an SpAudioFormat object.
	SpAudioFormat? format {
		get { dispatch.getProperty("Format").asType(SpAudioFormat#) }
		set { dispatch.setProperty("Format", it) }
	}

	** Gets and sets the current line identifier associated with the multimedia device.
	Int? lineId {
		get { dispatch.getProperty("LineId").asInt }
		set { dispatch.setProperty("LineId", it) }
	}

	** Returns the handle of the multimedia audio device stream.
	Int? mMHandle {
		get { dispatch.getProperty("MMHandle").asInt }
		private set { }
	}

	** Returns the audio status as an ISpeechAudioStatus object.
	ISpeechAudioStatus? status {
		get { dispatch.getProperty("Status").asType(ISpeechAudioStatus#) }
		private set { }
	}

	** Gets and sets the volume level.
	Int? volume {
		get { dispatch.getProperty("Volume").asInt }
		set { dispatch.setProperty("Volume", it) }
	}


	// ---- Methods -------------------------------------------------------------------------------

	** Reads data from the audio stream.
	Int? read(Variant? buffer, Int? numberOfBytes) {
		dispatch.call("Read", buffer, numberOfBytes).asInt
	}

	** Returns the current read position of the audio stream in bytes.
	Variant seek(Variant? position, SpeechStreamSeekPositionType? origin := SpeechStreamSeekPositionType.SSSPTRelativeToStart) {
		dispatch.call("Seek", position, origin)
	}

	** Sets the audio state with a SpeechAudioState constant.
	Void setState(SpeechAudioState? state) {
		dispatch.call("SetState", state)
	}

	** Writes data to the audio stream.
	Int? write(Variant? buffer) {
		dispatch.call("Write", buffer).asInt
	}
}
