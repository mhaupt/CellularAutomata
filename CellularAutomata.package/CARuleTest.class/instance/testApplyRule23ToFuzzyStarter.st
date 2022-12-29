rule application
testApplyRule23ToFuzzyStarter
	| rule gen nextGen |
	rule := CARule number: 23.
	gen := #(1 1 0 1 0 0 1 1).
	
	"First application."
	nextGen := rule nextGeneration: gen.
	self assert: #(0 0 0 1 1 1 0 0) equals: nextGen.
	
	"Second application."
	nextGen := rule nextGeneration: nextGen.
	self assert: #(1 1 1 0 0 0 1 1) equals: nextGen