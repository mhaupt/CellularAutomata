rule creation
testRule0
	| r |
	r := CARule number: 0.
	self assert: r pattern equals: #(0 0 0 0 0 0 0 0)