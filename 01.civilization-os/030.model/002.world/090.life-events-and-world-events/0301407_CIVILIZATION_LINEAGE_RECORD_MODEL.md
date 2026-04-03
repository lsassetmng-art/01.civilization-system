# ============================================================
# CIVILIZATION LINEAGE RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical lineage record model.

model_type:
- civil lineage truth model

primary_key:
- lineage_record_id

natural_key:
- lineage_scope
- lineage_ref

fields:
- lineage_record_id
- lineage_scope
- lineage_ref
- lineage_status
- source_identity_scope
- target_identity_scope
- relation_type
- source_state_version
- created_at
- updated_at

lineage_status_enum:
- active
- revised
- invalidated
- archived

truth_boundary:
Lineage truth belongs to CivilizationOS civil-status domain.
