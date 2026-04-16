# ============================================================
# REJECT / DEFER / MERGE / TRANSFORM FLOW
# ============================================================

status: draft-for-canonical-update
system: persona-os
layer: flow
domain: external-reflection
document_type: flow
owner: Boss
prepared_by: Zero

flow_paths:
- reject path
- defer path
- merge path
- transform path
- return-for-review path

principles:
- reject is not silent discard
- defer keeps future review possible
- merge preserves lineage
- transform preserves meaning while reducing source-local leakage
