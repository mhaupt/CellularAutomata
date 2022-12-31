testing
testInitGenerationEvenWidth
	| au |
	au := CAAutomaton new
		rule: 0;
		width: 4.
	self assert: #(0 0 1 0) equals: au initGeneration