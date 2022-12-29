testing
testRun
	| au gens |
	au := CAAutomaton forRule: (CARule number: 30).
	gens := au runWidth: 7 generations: 4.
	self
		assert: #(
			#(0 0 0 1 0 0 0)
			#(0 0 1 1 1 0 0)
			#(0 1 1 0 0 1 0)
			#(1 1 0 1 1 1 1) )
		equals: gens