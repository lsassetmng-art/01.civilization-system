# ============================================================
# CIVILIZATION GUARDIANSHIP RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical guardianship record model.

model_type:
- civil responsibility truth model

primary_key:
- guardianship_record_id

natural_key:
- guardianship_scope
- guardianship_ref

fields:
- guardianship_record_id
- guardianship_scope
- guardianship_ref
- guardianship_status
- guardian_scope
- protected_scope
- governing_basis
- effective_from
- effective_until
- created_at
- updated_at

guardianship_status_enum:
- active
- suspended
- transferred
- terminated
- archived

truth_boundary:
Guardianship truth belongs to CivilizationOS civil-status domain.
