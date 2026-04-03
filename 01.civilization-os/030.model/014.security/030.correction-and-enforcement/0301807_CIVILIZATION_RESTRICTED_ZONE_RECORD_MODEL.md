# ============================================================
# CIVILIZATION RESTRICTED ZONE RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical restricted zone record model.

model_type:
- zone control truth model

primary_key:
- restricted_zone_record_id

natural_key:
- zone_scope
- zone_code

fields:
- restricted_zone_record_id
- zone_scope
- zone_code
- zone_status
- restriction_class
- governing_basis
- effective_from
- effective_until
- created_at
- updated_at

zone_status_enum:
- active
- elevated
- suspended
- lifted
- archived

truth_boundary:
Restricted-zone truth belongs to CivilizationOS security-enforcement domain.
