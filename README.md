# vapor-command-problem
Seems to be some issues with Vapor and Command options.

First, default options aren't recognized. In this example, the option "answer" defaults to "one."

```vapor run quiz``` 

Expected response: `better not be the middle one`

Actual response: `What?`

Second problem: this runs correctly, but returns a warning…

```vapor run quiz --answer=one```

Expected response: `better not be the middle one`

Actual response: `better not be the middle one`

Warning:  `[Deprecated] --option=value syntax is deprecated. Please use --option value (with no =) instead.` 

If we follow those directions…

```vapor run quiz --answer one```

Expected response: `better not be the middle one`

Error message: `Fatal error: Error raised at top level: ⚠️ CommandError: Too many arguments or unsupported options were supplied: ["one"]`
