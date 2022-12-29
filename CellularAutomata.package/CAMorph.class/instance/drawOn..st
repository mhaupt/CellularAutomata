drawing
drawOn: canvas
	canvas fillColor: Color white.
	1 to: self generations size do: [ :n | | gen |
		gen := self generations at: n.
		self drawOn: canvas generation: n data: gen ]