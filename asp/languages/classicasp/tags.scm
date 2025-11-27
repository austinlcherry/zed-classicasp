(function
  .
  (new_identifier (identifier) @name)) @definition.function

(subroutine
  .
  (new_identifier (identifier) @name)) @definition.function

(ptrsafe_function_declaration
  .
  (new_identifier (identifier) @name)) @definition.function

(parameter
  .
  (new_identifier (identifier) @name)) @definition.parameter

(variable_declaration
  .
  (variable_declaration_identifier (new_identifier (identifier) @name))) @definition.variable

(variable_declaration
  .
  (variable_declaration_identifier (array_identifier (new_identifier (identifier) @name)))) @definition.variable

(variable_list
  (variable_declaration_identifier (new_identifier (identifier) @name))) @definition.variable

(variable_list
  (variable_declaration_identifier (array_identifier (new_identifier (identifier) @name)))) @definition.variable

(function_call
  ("Call")?
  (identifier) @name) @reference.call

(member_expression
  "."
  (identifier) @name) @reference.field

(member_expression
  "."
  (function_call
    ("Call")?
    (identifier) @name)) @reference.call

(new_expression
  "New"
  (identifier) @name) @reference.type

(new_expression
  "New"
  (type_member_expression (identifier) @name)) @reference.type
