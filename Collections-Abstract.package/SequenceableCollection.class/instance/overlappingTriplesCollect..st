enumerating
overlappingTriplesCollect: aBlock 
	"Answer the result of evaluating aBlock with all of the overlapping triples of my elements."
	| retval |
	retval := self species ofSize: self size - 2.
	1 to: self size - 2
		do: [:i | retval at: i put: (aBlock value: (self at: i) value: (self at: i + 1) value: (self at: i + 2)) ].
	^retval