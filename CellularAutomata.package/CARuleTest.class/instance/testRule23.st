rule creation
testRule23
	| r |
	r := CARule number: 23.
	self assert: r pattern equals: #(1 1 1 0 1 0 0 0)