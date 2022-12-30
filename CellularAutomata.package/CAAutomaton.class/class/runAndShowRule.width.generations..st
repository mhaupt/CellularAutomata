running
runAndShowRule: ruleNumber width: width generations: numberOfGenerations
	"Run a CA for the given rule number, width, and number of generations, and open the resulting image."
	| automaton generations |
	automaton := CAAutomaton forRule: (CARule number: ruleNumber).
	generations := automaton runWidth: width generations: numberOfGenerations.
	(CAMorph forGenerations: generations) openInWorld