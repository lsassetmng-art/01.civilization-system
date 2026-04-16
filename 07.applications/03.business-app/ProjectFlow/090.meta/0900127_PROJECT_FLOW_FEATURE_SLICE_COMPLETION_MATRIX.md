# ============================================================
# PROJECT FLOW FEATURE SLICE COMPLETION MATRIX
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines completion conditions
for the early feature slices.

completion_matrix:

dashboard_ui_state_slice:
- expected_deliverables:
  - ui_state_slice_note
  - action_routing_note
- completion_condition:
  - dashboard state areas are explicit
  - dashboard actions map to local use cases explicitly

project_detail_state_slice:
- expected_deliverables:
  - ui_state_slice_note
  - viewmodel_boundary_note
- completion_condition:
  - project detail tabs and state areas are explicit
  - ERP reference versus local editable sections stay separated

task_feature_slice:
- expected_deliverables:
  - ui_state_slice_note
  - action_routing_note
- completion_condition:
  - task state changes and task actions are explicit
  - task list/detail planning split is explicit

customer_material_slice_group:
- expected_deliverables:
  - material_slice_note
  - action_routing_note
- completion_condition:
  - six standard material slices are explicit
  - review-aware export flow is explicit

sync_status_ui_slice:
- expected_deliverables:
  - cache_sync_slice_note
  - action_routing_note
- completion_condition:
  - sync status grouping and retry surface are explicit
  - mediated status visibility remains distinct from business truth

local_repository_slice:
- expected_deliverables:
  - repository_split_note
- completion_condition:
  - local repositories are grouped by feature or domain clearly
  - repository ownership stays local and explicit

businessos_gateway_slice:
- expected_deliverables:
  - gateway_split_note
  - viewmodel_boundary_note
- completion_condition:
  - BusinessOS-facing gateways are explicit
  - mediated payload entry points remain explicit
  - blocked boundary assumptions are not silently bypassed
