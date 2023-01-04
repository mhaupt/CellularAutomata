first generation
standardFirstGeneration
	| gen |
	gen := Array new: width withAll: 0.
	gen at: width / 2 + 1 put: 1.
	^gen