testing
testInitGenerationPattern
	| au |
	au := CAAutomaton new
		rule: 0;
		width: 20;
		firstGenerationPattern: 30.
	self assert: #(0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1) equals: au initGeneration