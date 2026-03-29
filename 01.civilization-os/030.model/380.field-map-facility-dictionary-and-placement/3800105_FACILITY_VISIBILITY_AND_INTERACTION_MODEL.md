# ============================================================
# FACILITY VISIBILITY AND INTERACTION MODEL
# ============================================================

status: canonical
layer: model
scope: field-map-facility-dictionary-and-placement
component: facility-visibility-and-interaction

owner: Boss
prepared_by: Zero


# ============================================================
# 1. VISIBILITY STATES
# ============================================================

visibility_states:
- visible_and_usable
- visible_overview_only
- visible_view_only
- visible_restricted
- hidden_until_discovered
- hidden_until_built


# ============================================================
# 2. INTERACTION STATES
# ============================================================

interaction_states:
- direct_service_entry
- overview_first_entry
- tenant_container_entry
- build_menu_entry
- management_only_entry
- no_user_interaction


# ============================================================
# 3. RULES
# ============================================================

interaction_rules:
- national_securities_market_facility is visible_view_only
- banking_rate_board_facility is visible_view_only
- recruitment_information_board is visible_view_only
- marketplace_facility is visible_and_usable
- bank_facility is visible_and_usable
- mixed_service_building is tenant_container_entry
- creator_owned_company_facility may be visible_and_usable with management_supported
- empty_lot is build_menu_entry rather than facility interaction


# ============================================================
# 4. FINAL RULE
# ============================================================

Visibility and interaction must be explicit
before a facility is rendered on the field map.
