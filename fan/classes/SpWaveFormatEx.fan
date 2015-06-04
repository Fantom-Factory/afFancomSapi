using afFancom::Dispatch
using afFancom::Variant

** Represents the format of waveform-audio data.
** 
** `http://msdn.microsoft.com/en-us/library/ee125661%28v=vs.85%29.aspx`
** 
** @clsid {C79A574C-63BE-44B9-801F-283F87F898BE}
class SpWaveFormatEx {
	internal Dispatch dispatch
	
	static const Str progId := "SAPI.SpWaveFormatEx"

	new makeFromProgId() {
		this.dispatch = Dispatch.makeFromProgId(progId)
	}
	
	new makeFromDispatch(Dispatch dispatch) {
		this.dispatch = dispatch
	}


	// ---- Properties ----------------------------------------------------------------------------

	Int? avgBytesPerSec {
		get { dispatch.getProperty("AvgBytesPerSec").asInt }
		set { dispatch.setProperty("AvgBytesPerSec", it) }
	}

	Int? bitsPerSample {
		get { dispatch.getProperty("BitsPerSample").asInt }
		set { dispatch.setProperty("BitsPerSample", it) }
	}

	Int? blockAlign {
		get { dispatch.getProperty("BlockAlign").asInt }
		set { dispatch.setProperty("BlockAlign", it) }
	}

	Int? channels {
		get { dispatch.getProperty("Channels").asInt }
		set { dispatch.setProperty("Channels", it) }
	}

	Variant extraData {
		get { dispatch.getProperty("ExtraData") }
		set { dispatch.setProperty("ExtraData", it) }
	}

	Int? formatTag {
		get { dispatch.getProperty("FormatTag").asInt }
		set { dispatch.setProperty("FormatTag", it) }
	}

	Int? samplesPerSec {
		get { dispatch.getProperty("SamplesPerSec").asInt }
		set { dispatch.setProperty("SamplesPerSec", it) }
	}

}
