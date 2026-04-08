# ============================================================
# CONSULTATION OUTPUT BOUNDARY COMMON MODEL
# ============================================================

status: canonical
layer: 030.model
system: persona-os
owner: Boss
prepared_by: Zero

definition:
Represents the output boundary of consultation.

fields:
- output_id
- consultation_id
- output_type
- output_text
- advisory_flag
- action_reference
- created_at

rules:
- consultation output is advisory output
- advisory_flag must remain true for consultation output
- consultation output must not be stored as approval state
