using build::BuildPod

class Build : BuildPod {
		
	new make() {
		podName = "afFancomSapi"
		summary = "Fancom Classes for Microsoft Speech API (SAPI) 5.4"
		version = Version("1.0.5")
		
		meta = [
			"proj.name"		: "Fancom SAPI",
			"repo.tags"		: "misc",
			"repo.public"	: "false"
		]

		depends = [
			"sys      1.0",
			"afFancom 1.0.4 - 1.0"
		]

		srcDirs = [`fan/`, `fan/interfaces/`, `fan/enums/`, `fan/classes/`]
		resDirs	= [`doc/`, `doc/examples/`]
	}
}
