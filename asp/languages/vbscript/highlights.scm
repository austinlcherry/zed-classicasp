(comment) @comment

; Literals
(string_literal) @string
(number) @number
(boolean) @constant.builtin

; Fallback identifiers
(identifier) @variable

; Function and subroutine declarations
(function
  .
  (new_identifier (identifier) @function))
(subroutine
  .
  (new_identifier (identifier) @function))
(ptrsafe_function_declaration
  .
  (new_identifier (identifier) @function))

; Parameters
(parameter
  .
  (new_identifier (identifier) @variable.parameter))

; Calls and member access
(function_call
  ("Call")?
  (identifier) @function.call)
(member_expression
  "."
  (identifier) @property)

; Types and constructors
(new_expression
  "New"
  (identifier) @type)
(new_expression
  "New"
  (type_member_expression (identifier) @type))
(type_member_expression
  .
  (identifier) @type)

; Variable declarations
(variable_declaration
  .
  (variable_declaration_identifier (new_identifier (identifier) @variable)))
(variable_declaration
  .
  (variable_declaration_identifier (array_identifier (new_identifier (identifier) @variable))))

(variable_assignment
  (identifier) @variable)

(variable_assignment
  (array_element (identifier) @variable))

; Operators
[
  "+"
  "-"
  "*"
  "/"
  "Mod"
  "&"
  "="
  "<>"
  "<"
  "<="
  ">"
  ">="
] @operator

; Punctuation
[
  "("
  ")"
  ","
  "."
] @punctuation.delimiter

; Keywords
"Function" @keyword
"Sub" @keyword
"Private" @keyword
"Dim" @keyword
"ReDim" @keyword
"Preserve" @keyword
"Call" @keyword
"Exit" @keyword
"If" @keyword
"Then" @keyword
"Else" @keyword
"End If" @keyword
"End Sub" @keyword
"End Function" @keyword
"For" @keyword
"To" @keyword
"Step" @keyword
"Next" @keyword
"Do" @keyword
"Loop" @keyword
"While" @keyword
"Wend" @keyword
"Until" @keyword
"New" @keyword
"As" @keyword
"ByVal" @keyword
"ByRef" @keyword
"Optional" @keyword
"ParamArray" @keyword
"Declare" @keyword
"PtrSafe" @keyword
"Lib" @keyword
"Alias" @keyword
"Not" @keyword
"And" @keyword
"Or" @keyword
"Xor" @keyword

; Built-in types
"Any" @type.builtin
"Boolean" @type.builtin
"Byte" @type.builtin
"Collection" @type.builtin
"Currency" @type.builtin
"Date" @type.builtin
"Decimal" @type.builtin
"Dictionary" @type.builtin
"Double" @type.builtin
"Integer" @type.builtin
"Long" @type.builtin
"LongLong" @type.builtin
"LongPtr" @type.builtin
"Object" @type.builtin
"Single" @type.builtin
"String" @type.builtin
"Variant" @type.builtin
