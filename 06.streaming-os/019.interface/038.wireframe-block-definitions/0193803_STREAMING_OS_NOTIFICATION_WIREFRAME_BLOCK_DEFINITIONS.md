# ============================================================
# STREAMING OS NOTIFICATION WIREFRAME BLOCK DEFINITIONS
# ============================================================

status: canonical-draft
system: streaming-os
domain: wireframe-block-definitions
owner: Boss
prepared_by: Zero

# ============================================================
# 1. notification_inbox_home
# ============================================================

blocks:
- top_app_bar
- category_tabs
- unread_summary_block
- notification_list_preview_block
- review_alert_preview_block
- escalation_alert_preview_block
- notification_settings_entry_block

# ============================================================
# 2. notification_detail
# ============================================================

blocks:
- top_app_bar
- notification_header_block
- notification_body_block
- related_target_link_block
- mark_read_unread_action_block

# ============================================================
# 3. creator_notification_list / viewer_notification_list
# ============================================================

common_blocks:
- top_app_bar
- category_filter_bar
- notification_list
- empty_state_block
- bulk_read_action_block

# ============================================================
# 4. review_alert_list / detail
# ============================================================

list_blocks:
- top_app_bar
- active_filter_bar
- review_alert_list

detail_blocks:
- top_app_bar
- alert_summary_block
- related_review_queue_item_block
- alert_status_block
- acknowledge_or_close_action_block

# ============================================================
# 5. escalation_alert_list / detail
# ============================================================

list_blocks:
- top_app_bar
- escalation_stage_filter_bar
- escalation_alert_list

detail_blocks:
- top_app_bar
- escalation_summary_block
- related_review_queue_item_block
- escalation_stage_block
- escalation_status_block
- acknowledge_or_close_action_block

# ============================================================
# 6. notification_settings
# ============================================================

blocks:
- top_app_bar
- creator_notification_preference_block
- viewer_notification_preference_block
- review_alert_preference_block
- escalation_alert_preference_block
- save_action_bar

