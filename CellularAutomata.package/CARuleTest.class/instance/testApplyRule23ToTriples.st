rule application
testApplyRule23ToTriples
	| rule |
	rule := CARule number: 23.
	#(
		#(0 0 0) 1
		#(0 0 1) 1
		#(0 1 0) 1
		#(0 1 1) 0
		#(1 0 0) 1
		#(1 0 1) 0
		#(1 1 0) 0
		#(1 1 1) 0
	) groupsOf: 2 atATimeDo: [ :triple :expected | | a b c result |
		a := triple at: 1.
		b := triple at: 2.
		c := triple at: 3.
		result := rule applyToTripleA: a andB: b andC: c.
		self assert: expected equals: result ]