# for loops

The for-loop features can help us to loop over variables, transform it and output it in different formats.

for-loops are typically used when _assigning a value to an argument_

# example: 

This example based on the vars.tf file in this folder.

```python
terrform console
> [for s in vars.list1: s + 1]
[
 2,
 11,
 10,
 102,
 4,
]
> [for s in vars.list2: upper(s)]
[
 "APPLE",
 "PEAR"
 "BANANA",
 "MANGO",
]
> [for k, v in vars.map1: k]     #output only key in list
[
 "apple",
 "pear",
 "banana",
 "mango",
]
> [for k, v in vars.map1: v]    #output only value in list
[
 5,
 10,
 0,
 3,
]
> {for k, v in vars.map1: v => k}    #print the output in map and switch the key value pair
{
 "0" = "mango"
 "10" = "banana"
 "3" = "pear"
 "5" = "apple"
}
```
