using afFancom::Dispatch
using afFancom::Variant

** Defines the audio stream buffer information.
** 
** `http://msdn.microsoft.com/en-us/library/ee125232%28v=vs.85%29.aspx`
** 
** @clsid {11B103D8-1142-4EDF-A093-82FB3915F8CC}
class ISpeechAudioBufferInfo {
	internal Dispatch dispatch
	
	new makeFromDispatch(Dispatch dispatch) {
		this.dispatch = dispatch
	}


	// ---- Properties ----------------------------------------------------------------------------

	** Gets and sets the size of the audio object's buffer, in milliseconds.
	Int? bufferSize {
		get { dispatch.getProperty("BufferSize").asInt }
		set { dispatch.setProperty("BufferSize", it) }
	}

	** Gets and sets the amount of time, in milliseconds, by which event notifications precede the 
	** actual occurrence of the events.
	Int? eventBias {
		get { dispatch.getProperty("EventBias").asInt }
		set { dispatch.setProperty("EventBias", it) }
	}

	** Gets and sets the minimum preferred time, in milliseconds, between the actual time an event 
	** notification occurs and the ideal time.
	Int? minNotification {
		get { dispatch.getProperty("MinNotification").asInt }
		set { dispatch.setProperty("MinNotification", it) }
	}

}
