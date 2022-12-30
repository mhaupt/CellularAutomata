drawing
drawOn: canvas
	| origin xbase ybase |
	origin := self bounds origin.
	xbase := origin x - 1.
	ybase := origin y - 1.
	canvas fillColor: Color white.
	generations
		withIndexDo: [ :generationData :generationNumber | | y |
			y := ybase + generationNumber.
			generationData
				withIndexDo: [ :e :x |
					e = 1 ifTrue: [ canvas point: (xbase+x)@y color: Color black ] ] ]