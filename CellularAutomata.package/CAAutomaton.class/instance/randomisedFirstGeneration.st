first generation
randomisedFirstGeneration
	| gen |
	gen := Array new: width.
	1 to: width do: [ :x | gen at: x put: #(0 1) atRandom ].
	^gen