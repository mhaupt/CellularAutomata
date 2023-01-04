testing
testOverlappingTriplesCollect
	| o |
	o := #(5 4 3 2 1) asOrderedCollection.
	self
		assert: #(12 9 6) asOrderedCollection
		equals: (o overlappingTriplesCollect: [ :a :b :c | a + b + c ])