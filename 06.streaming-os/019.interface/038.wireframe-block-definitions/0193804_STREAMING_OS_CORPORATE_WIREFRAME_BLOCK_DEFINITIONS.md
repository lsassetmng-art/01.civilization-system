# ============================================================
# STREAMING OS CORPORATE WIREFRAME BLOCK DEFINITIONS
# ============================================================

status: canonical-draft
system: streaming-os
domain: wireframe-block-definitions
owner: Boss
prepared_by: Zero

# ============================================================
# 1. corporate_channel_home
# ============================================================

blocks:
- top_app_bar
- official_channel_summary_block
- quick_actions_row
- official_stream_summary_block
- affiliated_streamer_summary_block
- oversight_summary_block
- monetization_summary_block

# ============================================================
# 2. corporate_channel_profile
# ============================================================

blocks:
- top_app_bar
- channel_identity_block
- profile_description_block
- artwork_block
- visibility_block
- save_action_bar

# ============================================================
# 3. corporate_official_stream_list
# ============================================================

blocks:
- top_app_bar
- filter_sort_bar
- official_stream_card_list
- stream_status_summary_block

# ============================================================
# 4. affiliated_streamer_list / detail
# ============================================================

list_blocks:
- top_app_bar
- affiliation_status_filter_bar
- affiliated_streamer_card_list

detail_blocks:
- top_app_bar
- streamer_identity_summary_block
- affiliation_status_block
- official_stream_capable_block
- related_stream_visibility_block
- oversight_note_block

# ============================================================
# 5. corporate_oversight_dashboard
# ============================================================

blocks:
- top_app_bar
- oversight_status_summary_block
- review_issue_summary_block
- affiliated_streamer_health_block
- official_channel_health_block
- recent_actions_block

# ============================================================
# 6. company_review_issue_list / company_monetization_visibility
# ============================================================

review_issue_blocks:
- top_app_bar
- issue_filter_bar
- issue_list

monetization_blocks:
- top_app_bar
- revenue_summary_block
- company_owned_stream_breakdown_block
- affiliated_streamer_visibility_block
- export_or_share_action_block

