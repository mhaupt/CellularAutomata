testing
testInitGeneration
	| au |
	au := CAAutomaton new
		rule: 0;
		width: 5.
	self assert: #(0 0 1 0 0) equals: au initGeneration