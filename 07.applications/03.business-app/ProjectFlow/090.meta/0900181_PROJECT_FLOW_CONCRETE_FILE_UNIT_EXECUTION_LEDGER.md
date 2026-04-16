# ============================================================
# PROJECT FLOW CONCRETE FILE UNIT EXECUTION LEDGER
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides an execution ledger
for early concrete file/task units.

execution_ledger:

  - order_no: 1
    unit_id: PF-FILE-001
    unit_name: app entry file unit
    scope_type: file_unit_local
    readiness: ready_first

  - order_no: 2
    unit_id: PF-FILE-002
    unit_name: bootstrap initializer file unit
    scope_type: file_unit_local
    readiness: ready_after_app_entry_file

  - order_no: 3
    unit_id: PF-FILE-003
    unit_name: root navigation graph file unit
    scope_type: file_unit_local
    readiness: ready_after_navigation_graph_group

  - order_no: 4
    unit_id: PF-FILE-004
    unit_name: dashboard container file unit
    scope_type: file_unit_local
    readiness: ready_after_dashboard_container_group

  - order_no: 5
    unit_id: PF-FILE-005
    unit_name: dashboard reducer file unit
    scope_type: file_unit_local
    readiness: ready_after_dashboard_reducer_group

  - order_no: 6
    unit_id: PF-FILE-006
    unit_name: dashboard viewmodel file unit
    scope_type: file_unit_local
    readiness: ready_after_dashboard_viewmodel_group

  - order_no: 7
    unit_id: PF-FILE-007
    unit_name: project detail reducer file unit
    scope_type: file_unit_local
    readiness: ready_after_project_detail_reducer_group

  - order_no: 8
    unit_id: PF-FILE-008
    unit_name: material preview file unit
    scope_type: file_unit_local
    readiness: ready_after_material_preview_group

  - order_no: 9
    unit_id: PF-FILE-009
    unit_name: material export route file unit
    scope_type: file_unit_local
    readiness: ready_after_material_export_group

  - order_no: 10
    unit_id: PF-FILE-012
    unit_name: sync status UI file unit
    scope_type: file_unit_boundary_aware
    readiness: ready_after_sync_ui_group_and_boundary_safe_scope

  - order_no: 11
    unit_id: PF-FILE-013
    unit_name: cache refresh trigger file unit
    scope_type: file_unit_boundary_aware
    readiness: ready_after_cache_trigger_group_and_boundary_safe_scope

  - order_no: 12
    unit_id: PF-FILE-010
    unit_name: repository implementation file unit
    scope_type: file_unit_boundary_aware
    readiness: ready_after_repository_group

  - order_no: 13
    unit_id: PF-FILE-011
    unit_name: gateway implementation file unit
    scope_type: file_unit_boundary_aware
    readiness: ready_after_gateway_group_and_boundary_safe_scope

important_rule:
Boundary-aware file units remain later than core local file units
unless explicitly confirmed safe.
