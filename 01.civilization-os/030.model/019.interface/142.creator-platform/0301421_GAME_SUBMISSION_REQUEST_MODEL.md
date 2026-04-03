# ============================================================
# GAME SUBMISSION REQUEST MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical game submission request model.

model_type:
- submission request truth model

primary_key:
- game_submission_request_id

natural_key:
- request_scope
- request_ref
- correlation_id

fields:
- game_submission_request_id
- request_scope
- request_ref
- correlation_id
- request_status
- workspace_code
- seller_code
- game_title_code
- release_code
- submission_summary
- requested_at
- created_at
- updated_at

request_status_enum:
- created
- under_review
- approved
- rejected
- archived

truth_boundary:
Game submission request truth belongs to Civilization creator-platform domain.
