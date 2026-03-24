# ============================================================
# CIVILIZATION TREATY MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical treaty model.

model_type:
- normative relation model

primary_key:
- treaty_id

natural_key:
- treaty_code
- treaty_version

fields:
- treaty_id
- treaty_code
- treaty_version
- treaty_name
- treaty_status
- party_scope
- treaty_body
- effective_from
- effective_until
- created_at
- updated_at

treaty_status_enum:
- active
- suspended
- superseded
- revoked
- expired

truth_boundary:
Treaty truth belongs to CivilizationOS normative domain.
