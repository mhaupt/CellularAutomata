running
runWidth: width generations: gens
	"Run me with a start generation of the given width initialised to a 1 in the middle, and generate the given number of generations (including the start generation). Answer the generations."
	| startGeneration generations |
	startGeneration := self initGeneration: width.
	generations := OrderedCollection with: startGeneration.
	
	2 to: gens do: [ :g | generations add: (self rule nextGeneration: generations last) ].
	
	^ generations asArray