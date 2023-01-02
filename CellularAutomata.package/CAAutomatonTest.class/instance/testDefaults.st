testing
testDefaults
	"Ensure a plain vanilla automaton still has options that one can work with."
	| ca |
	ca := CAAutomaton new.
	self
		assert: [ ca width isInteger ];
		assert: [ ca generations isInteger ];
		assert: [ ca rule isMemberOf: CARule ];
		assert: [ ca randomFirstGeneration not ];
		assert: [ ca firstGenerationPattern isNil ]
		