running
runAndSaveRule: ruleNumber width: width generations: numberOfGenerations
	"Run a CA for the given rule number, width, and number of generations, and save the resulting image in PNG format. Its name will be a time stamp."
	| automaton generations morf |
	automaton := CAAutomaton forRule: (CARule number: ruleNumber).
	generations := automaton runWidth: width generations: numberOfGenerations.
	morf := CAMorph forGenerations: generations.
	morf exportAsPNGNamed: (TimeStamp current asUnixTime asString, '.png')
	