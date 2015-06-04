using afFancom::Dispatch
using afFancom::Variant

** Contains the time information for speech recognition results.
** 
** `http://msdn.microsoft.com/en-us/library/ee125502%28v=vs.85%29.aspx`
** 
** @clsid {62B3B8FB-F6E7-41BE-BDCB-056B1C29EFC0}
class ISpeechRecoResultTimes {
	internal Dispatch dispatch
	
	new makeFromDispatch(Dispatch dispatch) {
		this.dispatch = dispatch
	}


	// ---- Properties ----------------------------------------------------------------------------

	** Returns the time length of the last recognition.
	Variant length {
		get { dispatch.getProperty("Length") }
		private set { }
	}

	** Returns the time from the start of the stream to the start of the phrase.
	Variant offsetFromStart {
		get { dispatch.getProperty("OffsetFromStart") }
		private set { }
	}

	** Returns the time of the stream in Universal Coordinated Time.
	Variant streamTime {
		get { dispatch.getProperty("StreamTime") }
		private set { }
	}

	** Returns the elapsed time from the start of the system to the start of the current result.
	Int? tickCount {
		get { dispatch.getProperty("TickCount").asInt }
		private set { }
	}

}
