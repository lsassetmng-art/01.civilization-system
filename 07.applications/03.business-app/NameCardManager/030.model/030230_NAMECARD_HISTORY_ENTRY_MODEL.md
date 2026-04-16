# ============================================================
# NAMECARD HISTORY ENTRY MODEL
# ============================================================

status: draft
layer: model
system: applications
application: NameCardManager
model: namecard_history_entry
owner: Boss
prepared_by: Zero

purpose:
Stores user-facing history records for important name card events.

fields:
- history_entry_id
- namecard_id
- history_type
- summary_text
- related_actor_user_id
- related_request_id
- related_result_id
- occurred_at
- created_at

history_type_examples:
- created
- updated
- deleted
- shared_in_app
- share_revoked
- erp_publish_requested
- erp_publish_approved
- erp_publish_rejected
- erp_published
- erp_publish_failed
