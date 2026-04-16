# ============================================================
# SPEED EXPERIENCE AUDIT AND NOTIFICATION MODEL
# ============================================================

status: canonical-draft
layer: model
system: applications
application: App Development Studio
owner: Boss
prepared_by: Zero

purpose:
Defines audit, operation log, and notification model
for speed-experience features.

audit_event_types:
- quick_start_requested
- quick_start_completed
- quick_start_rejected
- live_preview_requested
- live_preview_completed
- live_preview_partial
- starter_pack_requested
- starter_pack_completed
- starter_pack_failed
- diff_review_requested
- diff_revert_executed
- diff_revert_rejected
- promote_to_governed_requested
- promote_to_governed_completed
- promote_to_governed_rejected
- switch_to_pc_guidance_shown
- switch_to_governed_guidance_shown

notification_event_types:
- quick_start_completed_notice
- preview_partial_notice
- starter_pack_ready_notice
- promote_to_governed_ready_notice
- revert_result_notice
- pc_switch_recommended_notice

core_fields:
- event_id
- run_id
- feature_name
- event_type
- event_at
- actor_role
- actor_id
- device_type
- mode_type
- result_state
- reason_code
- reason_message
- related_snapshot_id
- related_governed_run_id
