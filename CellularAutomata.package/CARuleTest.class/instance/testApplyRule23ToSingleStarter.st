rule application
testApplyRule23ToSingleStarter
	| rule gen nextGen |
	rule := CARule number: 23.
	gen := #(0 0 1 0 0).
	
	"First application."
	nextGen := rule nextGeneration: gen.
	self assert: #(1 1 1 1 1) equals: nextGen.
	
	"Second application."
	nextGen := rule nextGeneration: nextGen.
	self assert: #(0 0 0 0 0) equals: nextGen