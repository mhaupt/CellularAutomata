converting
asFloat64Array
	"Answer a Float64Array whose elements are the elements of the receiver, in 
	the same order."

	| floatArray |
	floatArray := Float64Array new: self size.
	1 to: self size do:[:i| floatArray at: i put: (self at: i) asFloat ].
	^floatArray