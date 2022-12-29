rule application
testRuleApplicationPreservesGenerationLength
	| rule |
	rule := CARule number: 0.
	1 to: 10 do: [ :length | | gen nextGen |
		gen := (Array new: length) atAllPut: 0.
		nextGen := rule nextGeneration: gen. 
		self
			assert: gen size
			equals: nextGen size
			description: 'Rule application should preserve generation length; failed for length', length, '.' ]