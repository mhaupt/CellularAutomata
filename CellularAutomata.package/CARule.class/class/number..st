rule creation
number: n
	| p |
	(n >= 0) & (n <= 255) ifFalse: [ self signal ].
	p := (OrderedCollection newFrom: (n printStringBase: 2 nDigits: 8)) collect: [ :c | c digitValue ].
	^ CARule new pattern: p reversed asArray