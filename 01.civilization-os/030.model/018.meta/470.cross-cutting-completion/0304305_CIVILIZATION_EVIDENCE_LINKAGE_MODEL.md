# ============================================================
# CIVILIZATION EVIDENCE LINKAGE MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical evidence linkage model.

model_type:
- cross-domain evidence truth model

primary_key:
- evidence_linkage_id

natural_key:
- linkage_scope
- linkage_ref
- evidence_hash

fields:
- evidence_linkage_id
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
Evidence-linkage truth belongs to CivilizationOS cross-cutting-completion domain.
