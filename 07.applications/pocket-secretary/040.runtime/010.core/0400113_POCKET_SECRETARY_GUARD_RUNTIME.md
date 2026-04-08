# ============================================================
# POCKET SECRETARY GUARD RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines runtime guard behavior for critical and permission-sensitive paths.

guard areas:
- permission validation
- review-required action validation
- sync precondition validation
- ERP submission precondition checks

rules:
- guard failure blocks unsafe continuation
- unknown authority must not pass guard checks
- guard success does not replace external confirmation
