# ============================================================
# CIVILIZATION BIODIVERSITY PROTECTION RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical biodiversity protection record model.

model_type:
- ecological protection truth model

primary_key:
- biodiversity_protection_record_id

natural_key:
- protection_scope
- protection_ref
- source_state_version

fields:
- biodiversity_protection_record_id
- protection_scope
- protection_ref
- protection_status
- protected_target_scope
- protection_class
- source_lineage
- source_state_version
- recorded_at
- created_at
- updated_at

protection_status_enum:
- active
- elevated
- impaired
- restored
- archived

truth_boundary:
Biodiversity-protection truth belongs to CivilizationOS environment-circularity domain.
