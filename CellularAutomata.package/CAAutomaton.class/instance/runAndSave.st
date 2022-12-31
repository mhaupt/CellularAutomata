running
runAndSave
	"Run this CA for the given rule number, width, and number of generations, and save the resulting image in PNG format. Its name will be a time stamp."
	| result morf |
	result := self run.
	morf := CAMorph forGenerations: result.
	morf exportAsPNGNamed: (TimeStamp current asUnixTime asString, '.png')
	