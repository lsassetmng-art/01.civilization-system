# ============================================================
# STREAMING OS CREATOR WIREFRAME BLOCK DEFINITIONS
# ============================================================

status: canonical-draft
system: streaming-os
domain: wireframe-block-definitions
owner: Boss
prepared_by: Zero

# ============================================================
# 1. creator_my_page_home
# ============================================================

blocks:
- top_app_bar
- creator_identity_summary_card
- channel_summary_card
- quick_actions_row
- videos_summary_block
- streams_summary_block
- archives_summary_block
- clips_summary_block
- revenue_summary_block
- ranking_summary_block
- recent_review_status_block
- recent_notification_block
- bottom_navigation_or_side_navigation

# ============================================================
# 2. creator_channel_management
# ============================================================

blocks:
- top_app_bar
- channel_identity_form_block
- channel_profile_description_block
- channel_artwork_block
- visibility_settings_block
- official_status_block
- organization_affiliation_block
- save_action_bar

# ============================================================
# 3. creator_video_list / stream_list / archive_list / clip_list
# ============================================================

common_blocks:
- top_app_bar
- filter_sort_bar
- search_in_list_bar
- list_summary_block
- item_card_list
- pagination_or_lazy_load_block
- bulk_action_bar
- bottom_navigation_or_side_navigation

# ============================================================
# 4. creator_studio_dashboard
# ============================================================

blocks:
- top_app_bar
- new_upload_entry_block
- draft_resume_block
- scheduled_publish_block
- review_waiting_block
- publish_ready_block
- recent_publish_result_block
- analytics_shortcuts_block

# ============================================================
# 5. creator_upload_entry
# ============================================================

blocks:
- top_app_bar
- upload_target_selector_block
- file_ingest_drop_or_pick_block
- upload_progress_block
- validation_message_block
- continue_action_bar

# ============================================================
# 6. creator_upload_metadata
# ============================================================

blocks:
- top_app_bar
- title_input_block
- description_input_block
- tags_input_block
- category_selector_block
- language_selector_block
- save_draft_action_bar
- next_action_bar

# ============================================================
# 7. creator_upload_thumbnail
# ============================================================

blocks:
- top_app_bar
- current_thumbnail_preview_block
- thumbnail_upload_block
- thumbnail_selection_block
- validation_message_block
- next_action_bar

# ============================================================
# 8. creator_upload_visibility_and_schedule
# ============================================================

blocks:
- top_app_bar
- visibility_selector_block
- schedule_datetime_block
- monetization_intent_block
- external_publish_target_block
- save_draft_action_bar
- next_action_bar

# ============================================================
# 9. creator_upload_review_status
# ============================================================

blocks:
- top_app_bar
- asset_target_summary_block
- rights_review_status_block
- safety_review_status_block
- age_review_status_block
- ad_suitability_status_block
- publish_ready_status_block
- blocking_reason_block
- proceed_or_back_action_bar

# ============================================================
# 10. creator_publish_request_confirm
# ============================================================

blocks:
- top_app_bar
- final_summary_block
- visibility_summary_block
- schedule_summary_block
- publish_target_summary_block
- review_gate_summary_block
- confirm_publish_action_bar

# ============================================================
# 11. creator_draft_list
# ============================================================

blocks:
- top_app_bar
- filter_sort_bar
- draft_status_tabs
- draft_card_list
- resume_edit_action
- discard_action
- bulk_action_bar

# ============================================================
# 12. creator_analytics_dashboard
# ============================================================

blocks:
- top_app_bar
- period_selector_block
- views_summary_block
- reactions_summary_block
- ranking_trend_block
- revenue_summary_block
- content_performance_table_block
- continuity_trend_block
- export_or_share_action_block

# ============================================================
# 13. creator_settings
# ============================================================

blocks:
- top_app_bar
- default_visibility_setting_block
- notification_preference_block
- studio_preference_block
- account_or_identity_reference_block
- save_action_bar

