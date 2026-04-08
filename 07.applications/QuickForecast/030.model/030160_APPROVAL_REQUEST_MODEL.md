# ============================================================
# APPROVAL REQUEST MODEL
# ============================================================

status: canonical
layer: model
application: QuickForecast
model: approval_request
owner: Boss
prepared_by: Zero

purpose:
Represents a Pro-tier approval request.

fields:
- approval_request_id
- target_type_code
- target_id
- requester_user_id
- approver_user_id
- approval_state_code
- request_comment
- requested_at
- responded_at
- response_comment
