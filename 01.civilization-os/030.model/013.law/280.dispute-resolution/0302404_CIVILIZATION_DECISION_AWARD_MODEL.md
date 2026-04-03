# ============================================================
# CIVILIZATION DECISION AWARD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical decision award model.

model_type:
- adjudicative outcome truth model

primary_key:
- decision_award_id

natural_key:
- award_scope
- award_code
- award_version

fields:
- decision_award_id
- award_scope
- award_code
- award_version
- award_status
- source_case_ref
- award_summary
- award_value
- effective_from
- effective_until
- created_at
- updated_at

award_status_enum:
- draft
- issued
- active
- stayed
- satisfied
- revoked
- archived

contract_version_rule:
Decision awards must expose explicit version semantics.

truth_boundary:
Decision-award truth belongs to CivilizationOS dispute-resolution domain.
