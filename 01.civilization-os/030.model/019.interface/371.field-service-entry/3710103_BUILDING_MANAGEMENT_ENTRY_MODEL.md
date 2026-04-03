# ============================================================
# BUILDING MANAGEMENT ENTRY MODEL
# ============================================================

status: canonical
layer: model
scope: field-service-entry
component: building-management-entry

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines management entry behavior
for editable buildings and facilities.


# ============================================================
# 2. MANAGEMENT ENTRY METHODS
# ============================================================

management_entry_methods:
- management_button
- long_press
- management_mode_toggle
- context_menu_entry


# ============================================================
# 3. MANAGEMENT TARGETS
# ============================================================

management_targets:
- company_builder
- housing_builder
- facility_builder
- tenant_layout_manager
- operator_settings
- building_state_manager


# ============================================================
# 4. RULES
# ============================================================

management_rules:
- management entry must be explicit
- ordinary tap must not silently open builder mode
- non-owned objects must not expose edit entry without permission
- restricted objects may expose overview but not management
- creator-owned objects may expose manage actions after overview or by explicit shortcut


# ============================================================
# 5. FINAL RULE
# ============================================================

Management entry must always feel intentional,
not accidental.
