# ============================================================
# CIVILIZATION TREATY OBLIGATION RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical treaty obligation record model.

model_type:
- normative obligation model

primary_key:
- treaty_obligation_record_id

natural_key:
- treaty_id
- obligation_code
- party_scope

fields:
- treaty_obligation_record_id
- treaty_id
- obligation_code
- party_scope
- obligation_status
- obligation_body
- effective_from
- effective_until
- created_at
- updated_at

obligation_status_enum:
- active
- suspended
- fulfilled
- breached
- expired

truth_boundary:
Treaty obligation truth belongs to CivilizationOS treaty domain.
