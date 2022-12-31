running
run
	"Run me with a start generation of the given width initialised to a 1 in the middle, and generate the given number of generations (including the start generation). Answer the generations."
	| startGeneration gens |
	startGeneration := self initGeneration.
	gens := OrderedCollection with: startGeneration.
	
	2 to: self generations do: [ :g | gens add: (self rule nextGeneration: gens last) ].
	
	^gens asArray