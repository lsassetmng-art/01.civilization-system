# ============================================================
# CIVILIZATION EVIDENCE BUNDLE MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical evidence bundle model.

model_type:
- audit evidence truth model

primary_key:
- evidence_bundle_id

natural_key:
- evidence_scope
- evidence_ref
- correlation_id

fields:
- evidence_bundle_id
- evidence_scope
- evidence_ref
- bundle_status
- source_record_set_hash
- source_state_version
- correlation_id
- bundled_at
- created_at
- updated_at

bundle_status_enum:
- built
- superseded
- invalidated
- archived

truth_boundary:
Evidence-bundle truth belongs to CivilizationOS records-governance domain.
