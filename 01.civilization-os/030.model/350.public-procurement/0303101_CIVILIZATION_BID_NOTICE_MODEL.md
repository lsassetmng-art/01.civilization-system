# ============================================================
# CIVILIZATION BID NOTICE MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical bid notice model.

model_type:
- tender publication truth model

primary_key:
- bid_notice_id

natural_key:
- notice_scope
- notice_code
- notice_version

fields:
- bid_notice_id
- notice_scope
- notice_code
- notice_version
- notice_status
- source_plan_code
- tender_summary
- submission_deadline
- created_at
- updated_at

notice_status_enum:
- draft
- published
- amended
- closed
- cancelled
- archived

contract_version_rule:
Bid notices must expose explicit version semantics.

truth_boundary:
Bid-notice truth belongs to CivilizationOS public-procurement domain.
