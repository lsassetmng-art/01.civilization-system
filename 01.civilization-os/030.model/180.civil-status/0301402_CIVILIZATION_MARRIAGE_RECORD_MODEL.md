# ============================================================
# CIVILIZATION MARRIAGE RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical marriage record model.

model_type:
- civil contract truth model

primary_key:
- marriage_record_id

natural_key:
- marriage_scope
- marriage_ref

fields:
- marriage_record_id
- marriage_scope
- marriage_ref
- marriage_status
- party_a_scope
- party_b_scope
- governing_basis
- effective_from
- effective_until
- created_at
- updated_at

marriage_status_enum:
- pending
- active
- suspended
- dissolved
- voided
- archived

truth_boundary:
Marriage truth belongs to CivilizationOS civil-status domain.
