# ============================================================
# CIVILIZATION AWARD DECISION MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical award decision model.

model_type:
- tender decision truth model

primary_key:
- award_decision_id

natural_key:
- decision_scope
- decision_code
- decision_version

fields:
- award_decision_id
- decision_scope
- decision_code
- decision_version
- decision_status
- source_notice_code
- winning_bid_ref
- approval_basis
- decided_at
- created_at
- updated_at

decision_status_enum:
- draft
- approved
- issued
- stayed
- revoked
- archived

contract_version_rule:
Award decisions must expose explicit version semantics.

truth_boundary:
Award-decision truth belongs to CivilizationOS public-procurement domain.
