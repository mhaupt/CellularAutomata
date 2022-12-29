running
runAndShowRule: ruleNumber width: width generations: numberOfGenerations
	| automaton generations |
	automaton := CAAutomaton forRule: (CARule number: ruleNumber).
	generations := automaton runWidth: width generations: numberOfGenerations.
	(CAMorph forGenerations: generations) openInWorld