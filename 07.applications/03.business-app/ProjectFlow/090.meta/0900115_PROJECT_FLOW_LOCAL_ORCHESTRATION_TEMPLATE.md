# ============================================================
# PROJECT FLOW LOCAL ORCHESTRATION TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for defining a ProjectFlow local orchestration layer
for a screen or feature surface.

template_fields:
- screen_or_surface_name
- shared_components_used
- local_sections_used
- orchestration_order
- local_visibility_rules
- local_action_routing
- local_state_binding
- notes

rules:
- orchestration stays ProjectFlow-local
- shared components are listed explicitly
- local sections are listed explicitly
- local action routing remains explicit
