# ============================================================
# CONSULTATION SESSION COMMON MODEL
# ============================================================

status: canonical
layer: 030.model
system: persona-os
owner: Boss
prepared_by: Zero

definition:
Represents a common consultation session shape.

fields:
- consultation_id
- user_id
- consultation_tier
- consultation_scope
- title
- summary
- state_code
- created_at
- updated_at

rules:
- tier and scope remain distinct
- consultation summary and approval state remain distinct
