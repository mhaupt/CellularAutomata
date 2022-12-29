rule creation
testRuleNumberFloat
	self
		should: [ CARule number: 2.3 ]
		raise: Exception
		description: 'rule numbers should be integer numbers in [0..255]'