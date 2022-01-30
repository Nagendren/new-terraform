# Built-IN Functions
## _These functions are called with the syntax name(arg1, arg2,..) and wrapped with ${...}_

```sh
Example: ${file("mykey.pub")} - will the read the content of the public key file
```

## Built-In-Functions with example
```python
Function: basename(path)
Description: Returns the filename of the path (last element)
Example: basename("/home/ubuntu/file.txt") - returns file.txt
```
```python
Function: coalesce(string1, string2, ..) and coalescelist(list1, list2,..)
Description: Returns the first non-empty value or list1
Example: coalesce("", "", "hello") - returns hello
```
```python
Function: element(list, index)
Description: Returns single element from a list at the given index
Example: element(module.vpc.public_subnets, count.index)
```
```python
Function: format(format, arg, ...) and formatlist(format, arg, ...)
Description: formats a string/list according to the given format
Example: format("server-%03d", count.index + 1)  - returns server-001, server-002. (%03d) - always maintain 3 digits(d)
```
```python
Function: index(list, elem)
Description: Finds the index of a given element in a list
Example: index(aws_instance.foo.*.tags.ENV,"prod")
```
```python
Function: join(delimiter, list)
Description: Joins the list together with a delimiter
Example: join(",", var.AMIS) - returns "ami-000, ami-111, ami-2222"
```
```python
Function: list(item1, item2)
Description: create a new list
Example: join(":", list("a","b","c")) - returns a:b:c
```
```python
Function: lookup(map, key, [default])
Description: Perform a lookup on map, using "key". Returns value representing "key" in the map
Example: lookup(map("k", "v"), "k", "not found") - returns "v" , will check for vaule , if no value found, it will return "not found"
```
```python
Function: lower(string)
Description: returns the lower case value of string
Example: lower("HELLO") - returns hello
```
```python
Function: upper(string)
Description: returns the lower case value of string
Example: upper("hello") - returns HELLO
```
```python
Function: map(key, value, ...)
Description: returns a new map using key:value
Example: map("k", "v", "k1", "v1") - returns: {"k" = "v", "k2" = "v2"}
```
```python
Function: merge(map1, map2,..)
Example: merges map(union)
Example: merge(map("k", "v"), map("k1", "v1")) - returns {"k" = "v", "k1" = "k2"}
```
```python
Function: replace(string, search, replace)
Description: performs search and replace on given string
Example: replace("aaabb", "a", "n") - returns nnnbb
```
```python
Function: split(delimiter, string)
Description: splits a string  into a list
Example: split(",", "a,b,c,d") - returns ["a", "b", "c", "d"]
```
```python
Function: substr(string, offset, length)
Description: extract substring from given string
Example: substr(abcde, -3, 3) - returns cde (starts from -3 element and return 3 elements from there)
```
```python
Function: uuid()
Description: returns a UUID string in RFC 4122 v4 format - Unique identifier
Example: uuid() - returns 65b8cf0a-685d-3295-73c1-1393ef71bcde
```
```python
Function: values(map)
Description: returns only value of map function
Example: values(map("k","v","k2","v2")) - returns ["v", "v2"]
```
```python
Function: timestamp()
Description: returns RFC 3339 timestamp
             (RFC(request for comment) 3339 is following the ISO 8601 DateTime format. The only difference is RFC allows us to replace “T” with “space”
             “Z”: stands for Zero timezone (UTC+0). Or equal to +00:00 in the RFC 3339.
			       2019-10-12T07:20:50.52Z - ISO 8601 format
			       2019-10-12 07:20:50.52Z - RFC 3339 format)
Example: server starts at ${timestamp()} - returns server starts at 2021-01-30 07:20:50.52Z
```
