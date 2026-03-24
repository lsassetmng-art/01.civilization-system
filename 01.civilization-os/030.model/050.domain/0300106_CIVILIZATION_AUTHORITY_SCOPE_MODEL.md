# ============================================================
# CIVILIZATION AUTHORITY SCOPE MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical authority scope model.

model_type:
- governance truth model

primary_key:
- authority_scope_id

natural_key:
- authority_code
- scope_code

fields:
- authority_scope_id
- authority_code
- scope_code
- authority_status
- authority_domain
- allowed_actions
- prohibited_actions
- effective_from
- effective_until
- created_at
- updated_at

authority_status_enum:
- active
- suspended
- revoked
- expired

truth_boundary:
Authority scope truth is canonical governance truth.
