running
runAndOpen
	"Run this CA for the given rule number, width, and number of generations, and open the resulting morph in the world."
	| result morf |
	result := self run.
	morf := CAMorph forGenerations: result.
	morf openInWorld 
	