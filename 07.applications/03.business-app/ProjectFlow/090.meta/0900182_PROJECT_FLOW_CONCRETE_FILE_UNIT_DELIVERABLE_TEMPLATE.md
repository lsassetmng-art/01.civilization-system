# ============================================================
# PROJECT FLOW CONCRETE FILE UNIT DELIVERABLE TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for defining deliverables
for concrete file/task units.

template_fields:
- unit_id
- unit_name
- deliverable_name
- deliverable_type
- objective
- source_outputs
- completion_condition
- blocked_by
- notes

deliverable_type_candidates:
- entry_file
- initializer_file
- navigation_graph_file
- screen_container_file
- reducer_file
- viewmodel_file
- preview_file
- export_route_file
- repository_file
- gateway_file
- sync_ui_file
- cache_trigger_file
