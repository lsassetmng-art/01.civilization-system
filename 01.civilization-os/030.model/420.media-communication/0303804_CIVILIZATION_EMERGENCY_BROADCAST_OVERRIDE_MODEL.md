# ============================================================
# CIVILIZATION EMERGENCY BROADCAST OVERRIDE MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical emergency broadcast override model.

model_type:
- emergency media control truth model

primary_key:
- emergency_broadcast_override_id

natural_key:
- override_scope
- override_code
- override_version

fields:
- emergency_broadcast_override_id
- override_scope
- override_code
- override_version
- override_status
- target_broadcast_scope
- override_summary
- approval_basis
- effective_from
- effective_until
- created_at
- updated_at

override_status_enum:
- draft
- approved
- active
- lifted
- revoked
- archived

contract_version_rule:
Emergency broadcast overrides must expose explicit version semantics.

truth_boundary:
Emergency-broadcast override truth belongs to CivilizationOS media-communication domain.
