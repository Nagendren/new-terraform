# Conditions(IF-ELSE)

Interpolation may contains conditionals(if-else).

## Syntax:

```bash
CONDITION? TRUEVAL:FALSEVAL
```

## Example
In below example, if env is prod, 
   create 2 instance else creating 1 instance.

```python
resource "aws_instance" "myinstance" {
	....
	....
	count = "${var.env == "prod"?2:1}"
}
```

## Operators
```
Equal               : ==
Not Equal           : !=

Numerical comparison: >,<,>=,<=

Boolean Logic:

             AND: &&

             OR: ||

             Not: !
```
