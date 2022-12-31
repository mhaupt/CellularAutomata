testing
testRun
	| au gens |
	au := CAAutomaton new
		ruleNo: 30;
		width: 7;
		generations: 4.
	gens := au run.
	self
		assert: #(
			#(0 0 0 1 0 0 0)
			#(0 0 1 1 1 0 0)
			#(0 1 1 0 0 1 0)
			#(1 1 0 1 1 1 1) )
		equals: gens