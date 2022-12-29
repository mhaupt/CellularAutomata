rule application
testApplyRule0
	| rule gens |
	rule := CARule number: 0.
	gens := #( #(0 0 0) #(0 1 0) #(1 1 1) ).
	gens do: [ :gen | | nextGen |
		nextGen := rule nextGeneration: gen.
		self
			assert: #(0 0 0)
			equals: nextGen
			description: 'Rule 0 should transform any generation to a 0 generation; failed for ', gen, '.' ]