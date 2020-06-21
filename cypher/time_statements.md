#### Create a Length for a duration
- via a [ISO 8601 standard](https://en.wikipedia.org/wiki/ISO_8601#Durations) string
```cypher
RETURN duration("PT3H5M2S")
```

- via two datetime instances
```cypher
WITH 
	datetime({epochSeconds: 1592772201}) AS start, 
	datetime() AS end
RETURN duration.between(start, end);
```

#### Create a date-time for start or end of a duration
- pass in an integer representing the number of seconds since the unix epoch. Do
 not pass in a time stamp, only utc should be stored.
 ```cypher
RETURN datetime({ epochSeconds:  1592772201 })
```
