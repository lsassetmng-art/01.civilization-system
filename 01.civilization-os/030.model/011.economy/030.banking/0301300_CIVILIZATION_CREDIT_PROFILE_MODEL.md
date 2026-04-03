# ============================================================
# CIVILIZATION CREDIT PROFILE MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical credit profile model.

model_type:
- finance trust model

primary_key:
- credit_profile_id

natural_key:
- credit_scope
- credit_code

fields:
- credit_profile_id
- credit_scope
- credit_code
- profile_status
- credit_score
- risk_class
- source_lineage
- source_state_version
- evaluated_at
- created_at
- updated_at

profile_status_enum:
- current
- provisional
- restricted
- suspended
- archived

truth_boundary:
Credit profile truth belongs to CivilizationOS finance-credit domain.
