# ============================================================
# CIVILIZATION LONG TERM CARE RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical long-term care record model.

model_type:
- care continuity truth model

primary_key:
- long_term_care_record_id

natural_key:
- care_scope
- care_ref

fields:
- long_term_care_record_id
- care_scope
- care_ref
- care_status
- recipient_scope
- care_level
- support_summary
- source_state_version
- opened_at
- closed_at
- created_at
- updated_at

care_status_enum:
- opened
- active
- stabilized
- closed
- suspended
- archived

truth_boundary:
Long-term-care truth belongs to CivilizationOS healthcare-publichealth domain.
