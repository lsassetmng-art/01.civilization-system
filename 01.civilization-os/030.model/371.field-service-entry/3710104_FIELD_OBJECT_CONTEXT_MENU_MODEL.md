# ============================================================
# FIELD OBJECT CONTEXT MENU MODEL
# ============================================================

status: canonical
layer: model
scope: field-service-entry
component: field-object-context-menu

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines context menu behavior
for field-map objects.


# ============================================================
# 2. CONTEXT MENU ACTIONS
# ============================================================

context_menu_actions:
- open_use
- open_overview
- open_manage
- open_builder
- open_operator_profile
- open_related_services
- pin_location
- add_to_favorites
- report_issue
- close_menu


# ============================================================
# 3. OBJECT-SPECIFIC RULES
# ============================================================

object_specific_rules:
- empty_lot shows build actions
- single_function_facility prioritizes open_use
- multi_tenant_building prioritizes tenant_list
- creator_owned_object exposes manage if permitted
- public_locked_object suppresses builder actions


# ============================================================
# 4. FINAL RULE
# ============================================================

Context menu must expose alternatives
without replacing the normal tap rule.
