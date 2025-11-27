(function
    ("Private")?
    "Function" @context
    (new_identifier (identifier) @name)
) @item

(subroutine
    "Sub" @context
    (new_identifier (identifier) @name)
) @item

(ptrsafe_function_declaration
    "Private"
    "Declare"
    "PtrSafe"
    "Function" @context
    (new_identifier (identifier) @name)
) @item

(variable_declaration
    "Dim" @context
    (variable_declaration_identifier (new_identifier (identifier) @name))
) @item

(variable_declaration
    "Dim" @context
    (variable_declaration_identifier (array_identifier (new_identifier (identifier) @name)))
) @item

(comment) @annotation
