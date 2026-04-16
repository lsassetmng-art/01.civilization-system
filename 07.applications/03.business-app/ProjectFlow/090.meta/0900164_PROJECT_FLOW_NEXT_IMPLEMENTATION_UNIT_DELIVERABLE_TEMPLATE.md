# ============================================================
# PROJECT FLOW NEXT IMPLEMENTATION UNIT DELIVERABLE TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for defining deliverables
for next implementation units.

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
- entry_wiring_unit
- navigation_unit
- ui_container_unit
- state_reducer_unit
- viewmodel_unit
- preview_unit
- export_routing_unit
- repository_impl_unit
- gateway_impl_unit
- sync_visibility_unit
- cache_refresh_unit
