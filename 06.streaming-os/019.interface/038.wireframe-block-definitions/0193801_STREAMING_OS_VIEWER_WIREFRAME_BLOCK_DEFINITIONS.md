# ============================================================
# STREAMING OS VIEWER WIREFRAME BLOCK DEFINITIONS
# ============================================================

status: canonical-draft
system: streaming-os
domain: wireframe-block-definitions
owner: Boss
prepared_by: Zero

# ============================================================
# 1. viewer_home
# ============================================================

blocks:
- top_app_bar
- search_entry_block
- featured_or_promoted_block
- personalized_recommendation_block
- ranking_highlight_block
- live_now_block
- category_shortcut_block
- continue_watching_block
- bottom_navigation

# ============================================================
# 2. viewer_discovery_category
# ============================================================

blocks:
- top_app_bar
- category_header_block
- category_filter_bar
- recommended_in_category_block
- live_in_category_block
- archives_in_category_block
- clips_in_category_block
- pagination_or_lazy_load_block

# ============================================================
# 3. viewer_search / viewer_search_results
# ============================================================

search_blocks:
- top_app_bar
- search_input_block
- recent_search_block
- trending_query_block

search_result_blocks:
- top_app_bar
- search_input_block
- filter_sort_bar
- result_type_tabs
- results_list_block
- empty_state_block
- pagination_or_lazy_load_block

# ============================================================
# 4. viewer_channel_page / viewer_creator_page
# ============================================================

common_blocks:
- top_app_bar
- profile_header_block
- subscribe_follow_action_block
- notification_preference_entry_block
- tab_selector_block
- featured_content_block
- videos_or_archives_list_block
- clips_list_block
- about_block

# ============================================================
# 5. viewer_waiting_room
# ============================================================

blocks:
- top_app_bar
- live_schedule_summary_block
- countdown_block
- follow_notify_action_block
- channel_or_creator_summary_block
- waiting_chat_or_reaction_placeholder_block
- related_content_block

# ============================================================
# 6. viewer_live_watch
# ============================================================

blocks:
- top_app_bar_or_immersive_video_bar
- live_video_player_block
- live_title_and_owner_block
- live_reaction_action_bar
- live_tipping_block
- live_chat_block
- live_moderation_notice_block
- next_related_content_block

# ============================================================
# 7. viewer_archive_watch / viewer_clip_watch
# ============================================================

common_blocks:
- top_app_bar_or_video_bar
- video_player_block
- title_metadata_block
- owner_channel_block
- reaction_action_bar
- follow_subscribe_action_block
- description_block
- comments_block
- next_up_block
- playlist_or_queue_entry_block

# ============================================================
# 8. viewer_playlist_list / detail
# ============================================================

playlist_list_blocks:
- top_app_bar
- playlist_summary_block
- playlist_card_list
- create_playlist_action_block

playlist_detail_blocks:
- top_app_bar
- playlist_header_block
- item_order_controls_block
- playlist_item_list
- play_all_action_block
- edit_visibility_action_block

# ============================================================
# 9. viewer_watch_queue
# ============================================================

blocks:
- top_app_bar
- queue_summary_block
- queue_item_list
- reorder_controls_block
- clear_queue_action_block
- save_as_playlist_action_block

# ============================================================
# 10. viewer_history / following
# ============================================================

history_blocks:
- top_app_bar
- filter_sort_bar
- history_item_list
- clear_or_manage_history_action_block

following_blocks:
- top_app_bar
- following_summary_block
- following_entity_list
- notification_preference_quick_edit_block

