# ============================================================
# FIELD VISIBILITY AND INTERACTION ATTRIBUTE ONLY MODEL
# ============================================================

status: canonical
layer: model
scope: field-facility-dictionary-alignment
component: field-visibility-and-interaction-attribute-only

owner: Boss
prepared_by: Zero


# ============================================================
# 1. VISIBILITY ATTRIBUTES
# ============================================================

visibility_attributes:
- visibility_state
- hidden_until_discovered
- hidden_until_built
- visible_and_usable
- visible_overview_only
- visible_view_only
- visible_restricted


# ============================================================
# 2. INTERACTION ATTRIBUTES
# ============================================================

interaction_attributes:
- interaction_state
- direct_service_entry
- overview_first_entry
- tenant_container_entry
- build_menu_entry
- management_only_entry
- no_user_interaction


# ============================================================
# 3. FINAL RULE
# ============================================================

Visibility and interaction
may vary by field-map context,
but not by facility identity drift.
