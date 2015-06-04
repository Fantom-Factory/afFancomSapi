using afFancom::Dispatch
using afFancom::Variant

** Represents an audio format.
** 
** `http://msdn.microsoft.com/en-us/library/ee125542%28v=vs.85%29.aspx`
** 
** @clsid {9EF96870-E160-4792-820D-48CF0649E4EC}
class SpAudioFormat {
	internal Dispatch dispatch
	
	static const Str progId := "SAPI.SpAudioFormat"

	new makeFromProgId() {
		this.dispatch = Dispatch.makeFromProgId(progId)
	}
	
	new makeFromDispatch(Dispatch dispatch) {
		this.dispatch = dispatch
	}


	// ---- Properties ----------------------------------------------------------------------------

	** Returns the GUID of the default format.
	Str? guid {
		get { dispatch.getProperty("Guid").asStr }
		set { dispatch.setProperty("Guid", it) }
	}

	** Gets and sets the speech audio format as a SpeechAudioFormatType.
	SpeechAudioFormatType? type {
		get { dispatch.getProperty("Type").asEnum(SpeechAudioFormatType#) }
		set { dispatch.setProperty("Type", it) }
	}


	// ---- Methods -------------------------------------------------------------------------------

	** Gets the audio format as an 'SpWaveFormatEx' object.
	SpWaveFormatEx? getWaveFormatEx() {
		dispatch.call("GetWaveFormatEx").asType(SpWaveFormatEx#)
	}

	** Sets the audio format with an 'SpWaveFormatEx' object.
	Void setWaveFormatEx(SpWaveFormatEx? waveFormatEx) {
		dispatch.call("SetWaveFormatEx", waveFormatEx)
	}
}
