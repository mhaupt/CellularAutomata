running
initGeneration: width
	"Answer an array of 0s of the given width, with a 1 right in the middle (or right to it in case the width is even)."
	| gen |
	gen := Array new: width withAll: 0.
	gen at: width / 2 + 1 put: 1.
	^ gen