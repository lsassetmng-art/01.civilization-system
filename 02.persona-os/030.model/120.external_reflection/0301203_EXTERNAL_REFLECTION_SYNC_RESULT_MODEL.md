# ============================================================
# EXTERNAL REFLECTION SYNC RESULT MODEL
# ============================================================

status: draft-for-canonical-update
system: persona-os
layer: model
domain: external-reflection
document_type: model
owner: Boss
prepared_by: Zero

formal_definition:
Formal sync and linkage result associated with external reflection handling.

core_fields:
- sync identity
- intake identity
- external reference
- acknowledgement status
- dedupe status
- retry status
- linkage status
- failure summary
- created_at
- updated_at

core_rules:
- sync result is not review result
- sync result is not canonical update truth
