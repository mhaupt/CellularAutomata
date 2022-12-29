rule application
testApplyRule30
	"The famous one."
	| rule gen |
	rule := CARule number: 30.
	gen := #(0 0 0 1 0 0 0).
	
	"1"
	gen := rule nextGeneration: gen.
	self assert: #(0 0 1 1 1 0 0) equals: gen.
	"2"
	gen := rule nextGeneration: gen.
	self assert: #(0 1 1 0 0 1 0) equals: gen.
	"3"
	gen := rule nextGeneration: gen.
	self assert: #(1 1 0 1 1 1 1) equals: gen