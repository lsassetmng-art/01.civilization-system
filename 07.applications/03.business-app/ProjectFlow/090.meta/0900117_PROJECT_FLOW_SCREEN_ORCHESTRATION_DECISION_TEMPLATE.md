# ============================================================
# PROJECT FLOW SCREEN ORCHESTRATION DECISION TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for deciding screen-level orchestration
during implementation-start planning.

template_fields:
- screen_name
- official_shared_components_checked: yes_no
- shared_components_selected
- local_sections_selected
- orchestration_order
- local_action_routes
- local_state_binding_points
- review_or_read_only_visibility_points
- notes

decision_rules:
- screen decision must list both shared and local parts
- missing shared components should not block local orchestration planning
- local action routes should remain explicit
