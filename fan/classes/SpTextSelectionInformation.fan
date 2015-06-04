using afFancom::Dispatch
using afFancom::Variant

** Provides access to the text selection information pertaining to a word sequence buffer.
** 
** `http://msdn.microsoft.com/en-us/library/ee125609%28v=vs.85%29.aspx`
** 
** @clsid {0F92030A-CBFD-4AB8-A164-FF5985547FF6}
class SpTextSelectionInformation {
	internal Dispatch dispatch
	
	static const Str progId := "SAPI.SpTextSelectionInformation"

	new makeFromProgId() {
		this.dispatch = Dispatch.makeFromProgId(progId)
	}
	
	new makeFromDispatch(Dispatch dispatch) {
		this.dispatch = dispatch
	}


	// ---- Properties ----------------------------------------------------------------------------

	** Gets and sets the count of characters for the active range of the text selection buffer.
	Int? activeLength {
		get { dispatch.getProperty("ActiveLength").asInt }
		set { dispatch.setProperty("ActiveLength", it) }
	}

	** Gets and sets the offset of the active text selection buffer from the beginning of the word 
	** sequence data buffer.
	Int? activeOffset {
		get { dispatch.getProperty("ActiveOffset").asInt }
		set { dispatch.setProperty("ActiveOffset", it) }
	}

	** Gets and sets the count of characters in the selected text within the word sequence data 
	** buffer.
	Int? selectionLength {
		get { dispatch.getProperty("SelectionLength").asInt }
		set { dispatch.setProperty("SelectionLength", it) }
	}

	** Gets and sets the offset of the selected text within the word sequence buffer.
	Int? selectionOffset {
		get { dispatch.getProperty("SelectionOffset").asInt }
		set { dispatch.setProperty("SelectionOffset", it) }
	}

}
