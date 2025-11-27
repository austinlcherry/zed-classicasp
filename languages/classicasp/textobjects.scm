(function) @function.around
(function
    .
    [
        (variable_assignment)
        (variable_declaration)
        (if_statement)
        (for_statement)
        (while_statement)
        (do_statement)
        (exit_statement)
        (invocation_statement)
        (subroutine)
        (function)
        (redim)
    ] @function.inside)

(subroutine) @function.around
(subroutine
    .
    [
        (variable_assignment)
        (variable_declaration)
        (if_statement)
        (for_statement)
        (while_statement)
        (do_statement)
        (exit_statement)
        (invocation_statement)
        (subroutine)
        (function)
        (redim)
    ] @function.inside)

(comment)+ @comment.around
