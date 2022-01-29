# Interpolation
In terraform, we can interpolate other values using ${...}

example:
- variable = ${var.VARIABLE_NAME}
- Resources = ${aws_instance.name.id}
- Data Source = ${data.template_file.name.rendered}

## Features

- Import a HTML file and watch it magically convert to Markdown
- Drag and drop images (requires your Dropbox account be linked)
- Import and save files from GitHub, Dropbox, Google Drive and One Drive
- Drag and drop markdown and HTML files into Dillinger
- Export documents as Markdown, HTML and PDF

Markdown is a lightweight markup language based on the formatting conventions
that people naturally use in email.
As [John Gruber] writes on the [Markdown site][df1]

> The overriding design goal for Markdown's
> formatting syntax is to make it as readable
> as possible. The idea is that a
> Markdown-formatted document should be
> publishable as-is, as plain text, without
> looking like it's been marked up with tags
> or formatting instructions.

This text you see here is *actually- written in Markdown! To get a feel
for Markdown's syntax, type some text into the left window and
watch the results in the right.

## Tech

Dillinger uses a number of open source projects to work properly:

- [AngularJS] - HTML enhanced for web apps!
- [Ace Editor] - awesome web-based text editor
- [markdown-it] - Markdown parser done right. Fast and easy to extend.
- [Twitter Bootstrap] - great UI boilerplate for modern web apps
- [node.js] - evented I/O for the backend
- [Express] - fast node.js network app framework [@tjholowaychuk]
- [Gulp] - the streaming build system
- [Breakdance](https://breakdance.github.io/breakdance/) - HTML
to Markdown converter
- [jQuery] - duh

And of course Dillinger itself is open source with a [public repository][dill]
 on GitHub.

## Interpolation with Data Types

```sh
Datatype: STRING
Syntax: var.name
Example: ${var.VARIABLE_NAME}
```

```sh
Datatype: LIST
Syntax: var.LIST or var.LIST[0]
Example: 1) ${var.subnets[0]} 
         2) ${join(",",var.subnets)} # values in the list will be created as one variable with comman seperated.
```

```sh
Datatype: MAP
Syntax: var.MAP["key"]
Example: We can use any method to invoke map varibale
         1) ${var.AMIS[var.AWS_REGION]}
         2) ${lookup(var.AMIS,var.AWS_REGION)}
```

## Interpolation with other types

```sh
Datatype: output of a module
Syntax: module.name.output
Example: ${module.aws_vpc.vpcid}
```

```sh
Datatype: COUNT Information
Syntax: count.FIELD
Example: ${count.index} # will give you the count
```
```sh
Datatype: PATH Information
Syntax: path.Type
Example: 1) path.cwd #current working dir
	     2) path.module #module path
	     3) path.root   #root module path
```
```sh
Datatype: META Information
Syntax: terraform.FIELD
Example: terraform.env #shows active workspace
```
## Interpolation with  MATH
```sh
Datatype: float types
Example: + = ADD
         - = SUBTRACT
         * = MULTIPLY
         / = DIVIDE
```
```sh
Datatype: integer types
Example: + = ADD
         - = SUBTRACT
         * = MULTIPLY
         / = DIVIDE
         % = Modulo
```
