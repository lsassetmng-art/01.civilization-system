# ============================================================
# NAMECARD AUDIT ACTION CODE MODEL
# ============================================================

status: draft
layer: model
system: applications
application: NameCardManager
model: namecard_audit_action_code
owner: Boss
prepared_by: Zero

purpose:
Defines canonical audit action codes used by NameCardManager.

action_codes:
- create_namecard
- update_namecard
- delete_namecard
- restore_namecard
- sync_pull
- sync_push
- sync_conflict_detected
- sync_conflict_resolved
- app_share_requested
- app_share_applied
- app_share_revoke_requested
- app_share_revoked
- erp_publish_requested
- erp_publish_routed_to_shared_capability
- erp_publish_approval_required
- erp_publish_approved
- erp_publish_rejected
- erp_publish_returned_for_fix
- erp_publish_submitted
- erp_publish_succeeded
- erp_publish_failed
- relationship_registered
- relationship_updated
- relationship_removed

notes:
- action codes should remain stable once adopted
- approval event and publication result event must remain distinguishable
