# Interpolation
In terraform, we can interpolate other values using ${...}

example:
- variable    = ${var.VARIABLE_NAME}
- Resources   = ${aws_instance.name.id}
- Data Source = ${data.template_file.name.rendered}


## Interpolation with Data Types

```python
Datatype: STRING
Syntax: var.name
Example: ${var.VARIABLE_NAME}
```

```python
Datatype: LIST
Syntax: var.LIST or var.LIST[0]
Example: 1) ${var.subnets[0]} 
         2) ${join(",",var.subnets)} # values in the list will be created as one variable with comman seperated.
```

```python
Datatype: MAP
Syntax: var.MAP["key"]
Example: We can use any of the below methods to invoke map varibale
         1) ${var.AMIS[var.AWS_REGION]}
         2) ${lookup(var.AMIS,var.AWS_REGION)}
```

## Interpolation with other types

```python
Datatype: output of a module
Syntax: module.name.output
Example: ${module.aws_vpc.vpcid}
```

```python
Datatype: COUNT Information
Syntax: count.FIELD
Example: ${count.index} # will give you the count
```
```python
Datatype: PATH Information
Syntax: path.Type
Example: 1) path.cwd #current working dir
	     2) path.module #module path
	     3) path.root   #root module path
```
```python
Datatype: META Information
Syntax: terraform.FIELD
Example: terraform.env #shows active workspace
```
## Interpolation with  MATH
```python
Datatype: float types
Example: + = ADD
         - = SUBTRACT
         * = MULTIPLY
         / = DIVIDE
```
```python
Datatype: integer types
Example: + = ADD
         - = SUBTRACT
         * = MULTIPLY
         / = DIVIDE
         % = Modulo
```
