# ============================================================
# EXTERNAL REFLECTION AUDIT POLICY
# ============================================================

status: draft-for-canonical-update
system: persona-os
layer: policy
domain: external-reflection
document_type: policy
owner: Boss
prepared_by: Zero

must_track:
- intake record
- source system identity
- candidate identity
- evaluation rationale
- transformed meaning if any
- decision result
- sync and linkage references
- canonical update target
- supersede and correction lineage

policy_rules:
- no external-origin canonical adoption without audit trace
- correction must preserve prior lineage
- merge must preserve source lineage
