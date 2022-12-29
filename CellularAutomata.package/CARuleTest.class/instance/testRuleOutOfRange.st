rule creation
testRuleOutOfRange
	#(-1 256 1024) do: [ :n |
		self
			should: [ CARule number: n ]
			raise: Exception
			description: 'rule numbers should be in [0..255], out-of-bounds creation should fail' ]