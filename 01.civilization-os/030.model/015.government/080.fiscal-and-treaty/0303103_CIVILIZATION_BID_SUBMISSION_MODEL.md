# ============================================================
# CIVILIZATION BID SUBMISSION MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical bid submission model.

model_type:
- bid intake truth model

primary_key:
- bid_submission_id

natural_key:
- submission_scope
- submission_ref
- bidder_scope

fields:
- bid_submission_id
- submission_scope
- submission_ref
- bidder_scope
- submission_status
- source_notice_code
- bid_value
- currency_code
- payload_hash
- submitted_at
- created_at
- updated_at

submission_status_enum:
- submitted
- accepted
- rejected
- withdrawn
- opened
- archived

truth_boundary:
Bid-submission truth belongs to CivilizationOS public-procurement domain.
