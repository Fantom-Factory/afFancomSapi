
** Lists factors that can interfere with accurate recognition of speech input.
** 
** `http://msdn.microsoft.com/en-us/library/ee125201%28v=vs.85%29.aspx`
enum class SpeechInterference {

	** Private. Do not use.
	** 
	** Value is 0 (0x0)
	SINone,

	** The sound received is interpreted by the speech recognition engine as noise. This event is 
	** generated when there is a SOUND_START followed by a SOUND_END without an intervening 
	** PHRASE_START. The event will be also generated during dictation if, after a series of 
	** hypotheses, it is determined that the signal is noise.
	** 
	** Value is 1 (0x1)
	SINoise,

	** A sound is received but it is of a constant intensity. This also includes the microphone 
	** 
	** being unplugged or muted. 
	** Value is 2 (0x2)
	SINoSignal,

	** A sound is received but the stream intensity is too high for discrete recognition. 
	** 
	** Value is 3 (0x3)
	SITooLoud,

	** A sound is received but the stream intensity is too low for discrete recognition.
	** 
	** Value is 4 (0x4)
	SITooQuiet,

	** The words are spoken too quickly for discrete recognition.
	** 
	** Value is 5 (0x5)
	SITooFast,

	** The words are spoken too slowly and indicates excessive time between words. 
	** 
	** Value is 6 (0x6)
	SITooSlow,
	
	** The duration of captured audio input that is still awaiting recognition has exceeded an 
	** initial threshold. SAPI takes no action, but client applications should be aware (and 
	** consumers should be made aware) that recognition will be delayed while processing catches 
	** up. Users should be informed that providing additional input may result in loss of input 
	** data (via a future truncation) 
	** 
	** **Note:** Is only mentioned in documentation.
	** 
	** Value is 7 (0x7)
	SILatencyWarning,
	
	** The duration of captured audio input that is still awaiting recognition has exceeded a 
	** higher threshold. SAPI discards subsequent input while it catches up on the data already 
	** in the audio queue. Users should be informed via the event that SAPI is not accepting audio 
	** input (new input will be lost) while it processes data that is already queued.
	**  
	** **Note:** Is only mentioned in documentation.
	** 
	** Value is 8 (0x8)
	SILatencyTruncateBegin,
	
	** After SAPI begins truncating audio input (and raises a _LATENCY_TRUNCATE_BEGIN 
	** SPEI_INTERFERENCE event, if applicable), processing will catch up and the queue will be 
	** emptied. When no further data remains in the queue, SAPI will resume and raise 
	** _LATENCY_TRUNCATE_END to inform users and consumer applications that speech recognition will 
	** accept new audio input. 
	**  
	** **Note:** Is only mentioned in documentation.
	** 
	** Value is 9 (0x9)
	SILatencyTruncateEnd;

}
