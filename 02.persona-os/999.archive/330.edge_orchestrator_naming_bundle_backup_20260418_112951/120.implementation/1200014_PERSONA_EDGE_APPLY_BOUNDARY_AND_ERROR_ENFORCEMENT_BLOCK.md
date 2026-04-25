# PERSONA EDGE APPLY BOUNDARY AND ERROR ENFORCEMENT BLOCK

status: implementation-block-ready
system: PersonaOS
layer: implementation
confirmed_at: 20260418_074527

target:
- edge_apply

purpose:
Fixes the error handling and boundary enforcement behavior for edge_apply.

boundary_enforcement:
- edge_apply is intake-only
- edge_apply may accept contract-governed events only
- edge_apply must hand off to PersonaOS-controlled canonical apply
- edge_apply must not expose personas or persona_state directly
- edge_apply must not enable direct mutable truth updates by external OS

error_family_enforcement:
- schema_invalid
- semantic_invalid
- authority_blocked
- duplicate_event
- internal_retryable
- internal_terminal

result_status_enforcement:
- applied
- rejected
- duplicate_noop
- retrying
- dead_lettered

error_handling_rules:
- schema_invalid must terminate as rejected
- semantic_invalid must terminate as rejected
- authority_blocked must terminate as rejected
- duplicate_event must terminate as duplicate_noop
- internal_retryable must transition to retry_wait or retry scheduling path
- internal_terminal must transition to terminal_failed or dead_lettered according to policy

forbidden_behavior:
- uncategorized reject codes
- uncategorized error codes
- truth mutation on duplicate_noop
- direct external mutable truth return payload
- retry without stop condition

