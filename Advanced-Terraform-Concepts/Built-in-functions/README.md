# Built-IN Functions
## _These functions are called with the syntax name(arg1, arg2,..) and wrapped with ${...}_

```sh
Example: ${file("mykey.pub")} - will the read the content of the public key file
```

## Built-In-Functions with example
```sh
Function: basename(path)
Description: Returns the filename of the path (last element)
Example: basename("/home/ubuntu/file.txt") - returns file.txt
```
```python
Function: coalesce(string1, string2, ..) and coalescelist(list1, list2,..)
Description: Returns the first non-empty value or list1
Example: coalesce("", "", "hello") - returns hello
```
