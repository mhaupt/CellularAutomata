drawing
drawOn: canvas generation: y data: generation
	generation
		withIndexDo: [ :e :x |
			e = 1
				ifTrue: [ canvas line: x@y to: x@y color: Color black ]
				ifFalse: [ canvas line: x@y to: x@y color: Color red ] ]