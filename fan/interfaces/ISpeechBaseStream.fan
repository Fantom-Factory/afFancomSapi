using afFancom::Dispatch
using afFancom::Variant

** Defines properties and methods for manipulating data streams.
** 
** `http://msdn.microsoft.com/en-us/library/ee125250%28v=vs.85%29.aspx`
** 
** @clsid {6450336F-7D49-4CED-8097-49D6DEE37294}
class ISpeechBaseStream {
	internal Dispatch dispatch
	
	new makeFromDispatch(Dispatch dispatch) {
		this.dispatch = dispatch
	}


	// ---- Properties ----------------------------------------------------------------------------

	** Gets and sets the cached wave format of the stream as an SpAudioFormat object.
	SpAudioFormat? format {
		get { dispatch.getProperty("Format").asType(SpAudioFormat#) }
		set { dispatch.setProperty("Format", it) }
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

	** Writes data to the audio stream.
	Int? write(Variant? buffer) {
		dispatch.call("Write", buffer).asInt
	}
	
	SpCustomStream toSpCustomStream() {
		SpCustomStream(dispatch)
	}

	SpFileStream toSpFileStream() {
		SpFileStream(dispatch)
	}

	SpMemoryStream toSpMemoryStream() {
		SpMemoryStream(dispatch)
	}

	ISpeechAudio toISpeechAudio() {
		ISpeechAudio(dispatch)
	}
}
