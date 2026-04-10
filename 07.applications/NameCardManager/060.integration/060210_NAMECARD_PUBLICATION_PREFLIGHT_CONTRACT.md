# ============================================================
# NAMECARD PUBLICATION PREFLIGHT CONTRACT
# ============================================================

status: canonical
layer: integration
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Defines boundary contract for ERP publication preflight.

request_direction:
- requester_user_id
- namecard_ids
- company_id
- publication_policy_code

response_direction:
- preflight_passed
- blocking_validation_codes
- warning_items
- publication_preview_payload
- approval_required

