using afFancom::Variant

** Lists the supported stream formats.
enum class SpeechAudioFormatType {

	** Value is -1 (0xFFFFFFFFFFFFFFFF)
	SAFTDefault(-1),

	** Value is 0 (0x0)
	SAFTNoAssignedFormat(0),

	** Value is 1 (0x1)
	SAFTText(1),

	** SAFTNonStandardFormat is a non-SAPI 5 standard format without a WAVEFORMATEX description.
	** 
	** Value is 2 (0x2)
	SAFTNonStandardFormat(2),

	** SAFTExtendedAudioFormat is a non-SAPI 5 standard format but has WAVEFORMATEX description.
	** 
	** Value is 3 (0x3)
	SAFTExtendedAudioFormat(3),

	** Value is 4 (0x4)
	SAFT8kHz8BitMono(4),

	** Value is 5 (0x5)
	SAFT8kHz8BitStereo(5),

	** Value is 6 (0x6)
	SAFT8kHz16BitMono(6),

	** Value is 7 (0x7)
	SAFT8kHz16BitStereo(7),

	** Value is 8 (0x8)
	SAFT11kHz8BitMono(8),

	** Value is 9 (0x9)
	SAFT11kHz8BitStereo(9),

	** Value is 10 (0xA)
	SAFT11kHz16BitMono(10),

	** Value is 11 (0xB)
	SAFT11kHz16BitStereo(11),

	** Value is 12 (0xC)
	SAFT12kHz8BitMono(12),

	** Value is 13 (0xD)
	SAFT12kHz8BitStereo(13),

	** Value is 14 (0xE)
	SAFT12kHz16BitMono(14),

	** Value is 15 (0xF)
	SAFT12kHz16BitStereo(15),

	** Value is 16 (0x10)
	SAFT16kHz8BitMono(16),

	** Value is 17 (0x11)
	SAFT16kHz8BitStereo(17),

	** Value is 18 (0x12)
	SAFT16kHz16BitMono(18),

	** Value is 19 (0x13)
	SAFT16kHz16BitStereo(19),

	** Value is 20 (0x14)
	SAFT22kHz8BitMono(20),

	** Value is 21 (0x15)
	SAFT22kHz8BitStereo(21),

	** Value is 22 (0x16)
	SAFT22kHz16BitMono(22),

	** Value is 23 (0x17)
	SAFT22kHz16BitStereo(23),

	** Value is 24 (0x18)
	SAFT24kHz8BitMono(24),

	** Value is 25 (0x19)
	SAFT24kHz8BitStereo(25),

	** Value is 26 (0x1A)
	SAFT24kHz16BitMono(26),

	** Value is 27 (0x1B)
	SAFT24kHz16BitStereo(27),

	** Value is 28 (0x1C)
	SAFT32kHz8BitMono(28),

	** Value is 29 (0x1D)
	SAFT32kHz8BitStereo(29),

	** Value is 30 (0x1E)
	SAFT32kHz16BitMono(30),

	** Value is 31 (0x1F)
	SAFT32kHz16BitStereo(31),

	** Value is 32 (0x20)
	SAFT44kHz8BitMono(32),

	** Value is 33 (0x21)
	SAFT44kHz8BitStereo(33),

	** Value is 34 (0x22)
	SAFT44kHz16BitMono(34),

	** Value is 35 (0x23)
	SAFT44kHz16BitStereo(35),

	** Value is 36 (0x24)
	SAFT48kHz8BitMono(36),

	** Value is 37 (0x25)
	SAFT48kHz8BitStereo(37),

	** Value is 38 (0x26)
	SAFT48kHz16BitMono(38),

	** Value is 39 (0x27)
	SAFT48kHz16BitStereo(39),

	** Value is 40 (0x28)
	SAFTTrueSpeech_8kHz1BitMono(40),

	** Value is 41 (0x29)
	SAFTCCITT_ALaw_8kHzMono(41),

	** Value is 42 (0x2A)
	SAFTCCITT_ALaw_8kHzStereo(42),

	** Value is 43 (0x2B)
	SAFTCCITT_ALaw_11kHzMono(43),

	** Value is 44 (0x2C)
	SAFTCCITT_ALaw_11kHzStereo(44),

	** Value is 45 (0x2D)
	SAFTCCITT_ALaw_22kHzMono(45),

	** Value is 46 (0x2E)
	SAFTCCITT_ALaw_22kHzStereo(46),

	** Value is 47 (0x2F)
	SAFTCCITT_ALaw_44kHzMono(47),

	** Value is 48 (0x30)
	SAFTCCITT_ALaw_44kHzStereo(48),

	** Value is 49 (0x31)
	SAFTCCITT_uLaw_8kHzMono(49),

	** Value is 50 (0x32)
	SAFTCCITT_uLaw_8kHzStereo(50),

	** Value is 51 (0x33)
	SAFTCCITT_uLaw_11kHzMono(51),

	** Value is 52 (0x34)
	SAFTCCITT_uLaw_11kHzStereo(52),

	** Value is 53 (0x35)
	SAFTCCITT_uLaw_22kHzMono(53),

	** Value is 54 (0x36)
	SAFTCCITT_uLaw_22kHzStereo(54),

	** Value is 55 (0x37)
	SAFTCCITT_uLaw_44kHzMono(55),

	** Value is 56 (0x38)
	SAFTCCITT_uLaw_44kHzStereo(56),

	** Value is 57 (0x39)
	SAFTADPCM_8kHzMono(57),

	** Value is 58 (0x3A)
	SAFTADPCM_8kHzStereo(58),

	** Value is 59 (0x3B)
	SAFTADPCM_11kHzMono(59),

	** Value is 60 (0x3C)
	SAFTADPCM_11kHzStereo(60),

	** Value is 61 (0x3D)
	SAFTADPCM_22kHzMono(61),

	** Value is 62 (0x3E)
	SAFTADPCM_22kHzStereo(62),

	** Value is 63 (0x3F)
	SAFTADPCM_44kHzMono(63),

	** Value is 64 (0x40)
	SAFTADPCM_44kHzStereo(64),

	** Value is 65 (0x41)
	SAFTGSM610_8kHzMono(65),

	** Value is 66 (0x42)
	SAFTGSM610_11kHzMono(66),

	** Value is 67 (0x43)
	SAFTGSM610_22kHzMono(67),

	** Value is 68 (0x44)
	SAFTGSM610_44kHzMono(68);


	const Int value

	private new make(Int value) {
		this.value = value
	}
	
	// ---- Variant Surrogate Methods -------------------------------------------------------------
	
	static SpeechAudioFormatType fromVariant(Variant variant) {
		varVal := variant.asInt
		return SpeechAudioFormatType.vals.find {
			it.value == varVal
		} ?: throw Err("Could not find SpeechAudioFormatType with value '$varVal'")
	}
	
	Variant toFancom() {
		Variant(value)
	}
}
