iteration
nextGeneration: generation
	"Apply myself to a generation of a cellular automaton (i.e., an array of 0s and 1s), and return the automaton's next generation."
	^ #(0), generation, #(0)
		overlappingTriplesCollect: [ :a :b :c | self applyToTripleA: a andB: b andC: c ]