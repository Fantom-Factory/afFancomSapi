
** Lists bookmark options.
** 
** `http://msdn.microsoft.com/en-us/library/ee125191%28v=vs.85%29.aspx`
enum class SpeechBookmarkOptions {

	** The recognition context will not pause when it encounters the bookmark.
	** 
	** Value is 0 (0x0)
	SBONone,

	** The recognition context will pause when it encounters the bookmark. This is the same as 
	** calling ISpeechRecoContext.Pause. The pause stops the speech recognition engine from 
	** processing any more data until Resume is called. In a paused state, the application can 
	**perform tasks such as changing grammars while the engine is at a known position in the 
	** stream. The application must explicitly begin processing afterward with 
	** 'ISpeechRecoContext.Resume'.
	** 
	** Value is 1 (0x1)
	SBOPause;

}
