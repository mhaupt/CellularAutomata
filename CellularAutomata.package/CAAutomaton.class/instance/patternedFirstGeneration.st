first generation
patternedFirstGeneration
	 | gen pat |
	pat := CARule digitArrayForByte: self firstGenerationPattern.
	gen := Array new: width.
	1 to: width do: [ :x | gen at: x put: (pat atWrap: x) ].
	^gen