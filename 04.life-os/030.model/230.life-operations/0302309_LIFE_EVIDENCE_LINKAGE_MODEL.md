# ============================================================
# LIFE EVIDENCE LINKAGE MODEL
# ============================================================

status: canonical
layer: 030.model
system: life-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical life evidence linkage model.

model_type:
- cross-domain evidence truth model

primary_key:
- life_evidence_linkage_id

natural_key:
- linkage_scope
- linkage_ref
- evidence_hash

fields:
- life_evidence_linkage_id
- linkage_scope
- linkage_ref
- evidence_hash
- linkage_status
- source_record_ref
- target_record_ref
- source_state_version
- linked_at
- created_at
- updated_at

linkage_status_enum:
- recorded
- superseded
- invalidated
- archived

truth_boundary:
Life evidence linkage truth belongs to LifeOS life-operations domain.
