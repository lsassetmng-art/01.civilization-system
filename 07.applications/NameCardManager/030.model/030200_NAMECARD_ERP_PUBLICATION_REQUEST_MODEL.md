# ============================================================
# NAMECARD ERP PUBLICATION REQUEST MODEL
# ============================================================

status: draft
layer: model
system: applications
application: NameCardManager
model: namecard_erp_publication_request
owner: Boss
prepared_by: Zero

purpose:
Represents a request from NameCardManager into shared BusinessOS
ERP publication capability.

fields:
- publication_request_id
- requester_user_id
- namecard_id
- company_id
- publication_policy_code
- approval_required
- request_note
- request_status
- requested_at
- routed_to_shared_capability_at
- created_at
- updated_at

request_status_examples:
- draft
- submitted
- pending_approval
- accepted_for_publication
- rejected
- failed
