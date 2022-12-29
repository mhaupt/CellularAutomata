iteration
applyToTripleA: a andB: b andC: c
	"Apply myself to one triple of bits from a generation, given by a, b, and c."
	^ pattern at: (c + (2 * b) + (4 * a)) + 1