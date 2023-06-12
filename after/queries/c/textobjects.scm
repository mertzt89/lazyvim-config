; extends
(
  (
    (comment) @c
    (#lua-match? @c "^/[*][*]+.*\n.*[*]/$")
  ) @_start
  .
  (function_definition)
  .
  (comment) @_end
  (#make-range! "function.documented" @_start @_end)
)
