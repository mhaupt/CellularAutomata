instance creation
forGenerations: generations
	| width height rect morf |
	width := (generations at: 1) size.
	height := generations size.
	rect := Rectangle exactCenter: World center extent: width@height.
	morf := self newBounds: rect color: Color white.
	morf generations: generations.
	^ morf