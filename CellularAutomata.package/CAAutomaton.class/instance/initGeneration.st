first generation
initGeneration
	"Answer an array of 0s and 1s of the given width. If it's not randomised or patterned, it will have a 1 right in the middle (or right to it in case the width is even)."
	self firstGenerationPattern
		ifNotNil: [ ^self patternedFirstGeneration ]
		ifNil: [
			self randomFirstGeneration 
				ifTrue: [ ^self randomisedFirstGeneration ]
				ifFalse: [ ^self standardFirstGeneration ] ]