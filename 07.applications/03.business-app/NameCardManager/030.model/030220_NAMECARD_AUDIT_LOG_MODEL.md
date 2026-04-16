# ============================================================
# NAMECARD AUDIT LOG MODEL
# ============================================================

status: draft
layer: model
system: applications
application: NameCardManager
model: namecard_audit_log
owner: Boss
prepared_by: Zero

purpose:
Stores auditable action history for NameCardManager.

fields:
- audit_log_id
- actor_user_id
- target_namecard_id
- action_code
- action_scope
- action_result
- related_request_id
- related_result_id
- detail_payload
- occurred_at
- created_at

action_code_examples:
- create_namecard
- update_namecard
- delete_namecard
- sync_push
- sync_conflict
- app_share
- app_share_revoke
- erp_publish_request
- erp_publish_result
- approval_result

action_scope_examples:
- local
- businessos
- shared_erp_publication
- erp
