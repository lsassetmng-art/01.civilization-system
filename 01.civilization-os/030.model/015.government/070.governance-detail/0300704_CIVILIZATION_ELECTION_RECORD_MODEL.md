# ============================================================
# CIVILIZATION ELECTION RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical election record model.

model_type:
- governance truth model

primary_key:
- election_record_id

natural_key:
- election_scope
- election_code
- election_version

fields:
- election_record_id
- election_scope
- election_code
- election_version
- election_status
- governing_rule_ref
- effective_from
- effective_until
- created_at
- updated_at

election_status_enum:
- scheduled
- active
- concluded
- disputed
- voided
- archived

truth_boundary:
Election record truth belongs to CivilizationOS governance domain.
