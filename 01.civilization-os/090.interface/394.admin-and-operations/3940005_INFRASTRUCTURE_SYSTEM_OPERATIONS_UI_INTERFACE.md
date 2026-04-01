# ============================================================
# INFRASTRUCTURE SYSTEM OPERATIONS UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: infrastructure-system-operations-ui
component: infrastructure-system-operations-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the UI interface
for system-only infrastructure operations
inside Civilization.


# ============================================================
# 2. CANONICAL SCREENS
# ============================================================

Canonical screens:

- infrastructure_system_dashboard_screen
- infrastructure_placement_screen
- infrastructure_extension_screen
- infrastructure_connection_change_screen
- infrastructure_impact_review_screen
- infrastructure_operations_history_screen


# ============================================================
# 3. INFRASTRUCTURE PLACEMENT SCREEN
# ============================================================

screen_id: infrastructure_placement_screen
route_key: admin/infrastructure/placement

visible_sections:
- placement_target_section
- infrastructure_type_section
- map_canvas_section
- validation_summary_section
- impact_summary_section
- confirmation_action_section

actions:
- preview_placement
- validate_placement
- confirm_placement
- cancel_placement


# ============================================================
# 4. INFRASTRUCTURE IMPACT REVIEW SCREEN
# ============================================================

screen_id: infrastructure_impact_review_screen
route_key: admin/infrastructure/impact-review

visible_sections:
- coverage_change_section
- supply_change_section
- dependency_change_section
- outage_risk_section
- affected_region_section

actions:
- confirm_placement
- go_back_to_edit
- cancel_operation


# ============================================================
# 5. FINAL RULE
# ============================================================

Infrastructure system operations UI must remain:

- system-only
- placement-capable
- validation-visible
- impact-visible
- confirmation-based
- traceable
