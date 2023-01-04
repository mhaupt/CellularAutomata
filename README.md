Fun with cellular automata in [Squeak](https://squeak.org). Best use version
6.0.

For example:

```
CAAutomaton new
	ruleNo: 30;
	width: 299;
	generations: 149;
	runAndOpen
```

Use `runAndSave` to save the result as a PNG file (its name will be the current
Unix time stamp).

Please find configuration setters in the `building` category of `CAAutomaton`.

Licence: friendly and non-contagious MIT.
