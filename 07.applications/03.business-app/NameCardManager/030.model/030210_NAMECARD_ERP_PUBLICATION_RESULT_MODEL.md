# ============================================================
# NAMECARD ERP PUBLICATION RESULT MODEL
# ============================================================

status: draft
layer: model
system: applications
application: NameCardManager
model: namecard_erp_publication_result
owner: Boss
prepared_by: Zero

purpose:
Represents the result returned from shared BusinessOS ERP
publication capability.

fields:
- publication_result_id
- publication_request_id
- namecard_id
- publication_state
- shared_capability_result_code
- erp_result_code
- erp_result_message
- published_at
- failed_at
- created_at
- updated_at

publication_state_examples:
- not_published
- publish_pending
- published
- publish_failed
