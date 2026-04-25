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

# EXACT READY FLOW REINFORCEMENT

status_extension: author-reviewed-with-flow-reinforcement
reinforced_at: 20260417_152041
domain: flow

minimum_flow_requirements:
- define actor or trigger
- define ordered steps
- define reject or block branch
- define retry or failure branch where applicable
- define terminal output

mandatory_flow_controls:
- no skipped validation or policy step
- no hidden side-effect branch
- no unaudited terminal transition

minimum_flow_acceptance_targets:
- happy path proof
- reject path proof
- retry or terminal failure proof where applicable
