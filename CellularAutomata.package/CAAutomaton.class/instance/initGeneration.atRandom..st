running
initGeneration: width atRandom: randomise
	"Answer an array of 0s and 1s of the given width. If it's not randomised, it will have a 1 right in the middle (or right to it in case the width is even)."
	| gen |
	randomise
		ifTrue: [
			gen := Array new: width.
			1 to: width do: [ :x | gen at: x put: #(0 1) atRandom ] ]
		ifFalse: [
			gen := Array new: width withAll: 0.
			gen at: width / 2 + 1 put: 1 ].
	^ gen