# ============================================================
# USER AND IDENTITY ADMIN UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: user-and-identity-admin-ui
component: user-and-identity-admin-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the UI interface
for user and identity administration
inside Civilization.


# ============================================================
# 2. CANONICAL SCREENS
# ============================================================

Canonical screens:

- user_identity_admin_dashboard_screen
- user_search_screen
- user_detail_screen
- duplicate_review_queue_screen
- identity_link_review_screen
- account_hold_release_screen
- identity_admin_history_screen


# ============================================================
# 3. USER SEARCH SCREEN
# ============================================================

screen_id: user_search_screen
route_key: admin/identity/search

visible_sections:
- search_input_section
- filter_section
- user_result_list_section

supported_filters:
- account_state
- login_provider
- duplicate_risk_state
- review_state

actions:
- execute_search
- open_user_detail
- open_duplicate_review_queue


# ============================================================
# 4. USER DETAIL SCREEN
# ============================================================

screen_id: user_detail_screen
route_key: admin/identity/user-detail

visible_sections:
- user_identity_summary_section
- linked_login_provider_section
- account_state_section
- duplicate_signal_section
- review_note_section
- admin_action_section

actions:
- hold_account
- release_account
- open_identity_link_review
- add_admin_note
- open_identity_admin_history


# ============================================================
# 5. DUPLICATE REVIEW QUEUE SCREEN
# ============================================================

screen_id: duplicate_review_queue_screen
route_key: admin/identity/duplicate-review

visible_sections:
- duplicate_case_list_section
- signal_summary_section
- decision_action_section

actions:
- open_identity_link_review
- approve_existing_linkage
- block_duplicate_creation
- set_review_hold
- add_review_note


# ============================================================
# 6. FINAL RULE
# ============================================================

User and identity admin UI must remain:

- review-centered
- duplicate-aware
- identity-link-aware
- hold-capable
- traceable
