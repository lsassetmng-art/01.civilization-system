# ============================================================
# WORLD AND BUILDER OPERATIONS UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: world-and-builder-operations-ui
component: world-and-builder-operations-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the UI interface
for world and builder operations
inside Civilization.


# ============================================================
# 2. CANONICAL SCREENS
# ============================================================

Canonical screens:

- world_operations_dashboard_screen
- builder_review_queue_screen
- state_builder_result_detail_screen
- city_builder_result_detail_screen
- map_correction_screen
- district_and_facility_structure_review_screen
- world_operations_history_screen


# ============================================================
# 3. BUILDER REVIEW QUEUE SCREEN
# ============================================================

screen_id: builder_review_queue_screen
route_key: admin/world/builder-review

visible_sections:
- state_builder_queue_section
- city_builder_queue_section
- review_filter_section

actions:
- open_state_builder_result_detail
- open_city_builder_result_detail
- approve_builder_result where supported
- hold_builder_result
- reject_builder_result where supported


# ============================================================
# 4. MAP CORRECTION SCREEN
# ============================================================

screen_id: map_correction_screen
route_key: admin/world/map-correction

visible_sections:
- target_scope_section
- map_truth_visibility_section
- correction_action_section
- impact_summary_section

actions:
- apply_correction
- cancel_correction
- preview_correction
- add_admin_note


# ============================================================
# 5. FINAL RULE
# ============================================================

World and builder operations UI must remain:

- map-truth-aware
- builder-supervisory
- correction-capable
- impact-visible
- traceable
