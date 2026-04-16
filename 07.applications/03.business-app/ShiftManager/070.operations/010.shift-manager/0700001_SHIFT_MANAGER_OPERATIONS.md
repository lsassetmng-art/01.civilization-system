# ============================================================
# SHIFT MANAGER OPERATIONS
# ============================================================

status: canonical
layer: operations
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

operation_items:
- monitor publication success
- monitor visibility recalculation failures
- monitor notification queue health
- monitor ERP linkage status
- support share-scope correction
- support urgent republish

recommended_logs:
- draft_saved
- schedule_published
- share_rule_changed
- visibility_rebuilt
- mobile_view_served
- notification_dispatched
- erp_export_requested
- erp_export_completed
- erp_export_failed
