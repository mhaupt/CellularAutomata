rule creation
testRuleNumberNotAnInteger
	self
		should: [ CARule number: 'boop' ]
		raise: Exception
		description: 'rule numbers should be integer numbers in [0..255]'