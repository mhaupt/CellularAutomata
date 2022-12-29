testing
testInitGeneration
	| au |
	au := CAAutomaton forRule: (CARule number: 0).
	self assert: #(0 0 1 0 0) equals: (au initGeneration: 5)