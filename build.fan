using build::BuildPod

class Build : BuildPod {
		
	new make() {
		podName = "afFancomSapi"
		summary = "Fancom Classes for Microsoft Speech API (SAPI) 5.4"
		version = Version([1,0,5])
		
		meta	= [	"org.name"		: "Alien-Factory",
					"org.uri"		: "http://www.alienfactory.co.uk/",
					"proj.name"		: "Fancom SAPI",
					"license.name"	: "BSD 2-Clause License",
					"repo.private"	: "true"	// Eeek!
				  ]
		
		srcDirs = [`fan/`, `fan/interfaces/`, `fan/enums/`, `fan/classes/`]
		resDirs	= [`doc/`, `doc/examples/`]
		depends = ["sys 1.0", "afFancom 1.0"]

		docApi = true
		docSrc = true
	}
}
