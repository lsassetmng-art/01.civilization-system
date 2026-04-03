# ============================================================
# MAP COMMON MENU UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: map-common-menu-ui-interface
component: map-common-menu-ui-interface

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the common menu UI interface contract
shared by:

- global map
- continent map
- city map


# ============================================================
# 2. TOP RIGHT MENU
# ============================================================

section_id: map_top_right_menu
section_type: action_panel

items:
- legal_explanation
- help

actions:
- open_legal_explanation
- open_help_screen


# ============================================================
# 3. BOTTOM RIGHT COMMON MENU
# ============================================================

section_id: map_bottom_right_common_menu
section_type: action_panel

items:
- home
- search
- notifications
- marketplace
- profile
- settings

actions:
- open_home
- open_search
- open_notifications
- open_marketplace
- open_profile
- open_settings


# ============================================================
# 4. SEARCH CONTRACT
# ============================================================

screen_id: search_screen
route_key: common/search

supported_targets:
- facility
- state

future_expandable_targets:
- city
- district
- company
- persona

fields:
- search_query
- search_target_filter

actions:
- submit_search
- open_search_result
- clear_search


# ============================================================
# 5. NOTIFICATIONS CONTRACT
# ============================================================

screen_id: notifications_screen
route_key: common/notifications

visible_sections:
- notification_list_section
- notification_filter_section

actions:
- open_notification_detail
- jump_to_target_route


# ============================================================
# 6. MARKETPLACE CONTRACT
# ============================================================

screen_id: marketplace_screen
route_key: common/marketplace

visible_sections:
- marketplace_summary_section
- marketplace_category_section
- marketplace_item_list_section

actions:
- open_marketplace_item
- back_to_previous_map


# ============================================================
# 7. PROFILE CONTRACT
# ============================================================

screen_id: profile_screen
route_key: common/profile

visible_sections:
- profile_summary_section
- profile_action_section

actions:
- edit_profile where supported
- back_to_previous_map


# ============================================================
# 8. SETTINGS CONTRACT
# ============================================================

screen_id: settings_screen
route_key: common/settings

visible_sections:
- settings_group_section
- settings_action_section

actions:
- save_settings
- back_to_previous_map


# ============================================================
# 9. HELP CONTRACT
# ============================================================

screen_id: help_screen
route_key: common/help

visible_sections:
- help_topic_list_section
- help_content_section

actions:
- open_help_topic
- back_to_previous_map


# ============================================================
# 10. FINAL RULE
# ============================================================

Map common menu must remain
structurally identical
across all map layers.
