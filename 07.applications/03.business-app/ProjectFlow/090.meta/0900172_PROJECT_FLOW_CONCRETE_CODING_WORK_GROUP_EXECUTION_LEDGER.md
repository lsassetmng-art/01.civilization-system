# ============================================================
# PROJECT FLOW CONCRETE CODING WORK GROUP EXECUTION LEDGER
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides an execution ledger
for early concrete coding work groups.

execution_ledger:

  - order_no: 1
    work_group_id: PF-CWG-001
    work_group_name: app entry file task group
    scope_type: concrete_coding_local
    readiness: ready_first

  - order_no: 2
    work_group_id: PF-CWG-002
    work_group_name: root navigation graph task group
    scope_type: concrete_coding_local
    readiness: ready_after_app_entry_file_group

  - order_no: 3
    work_group_id: PF-CWG-003
    work_group_name: dashboard container composable task group
    scope_type: concrete_coding_local
    readiness: ready_after_dashboard_container_unit

  - order_no: 4
    work_group_id: PF-CWG-004
    work_group_name: dashboard reducer implementation task group
    scope_type: concrete_coding_local
    readiness: ready_after_dashboard_reducer_unit

  - order_no: 5
    work_group_id: PF-CWG-005
    work_group_name: dashboard viewmodel implementation task group
    scope_type: concrete_coding_local
    readiness: ready_after_dashboard_viewmodel_unit

  - order_no: 6
    work_group_id: PF-CWG-006
    work_group_name: project detail reducer implementation task group
    scope_type: concrete_coding_local
    readiness: ready_after_project_detail_reducer_unit

  - order_no: 7
    work_group_id: PF-CWG-007
    work_group_name: material preview composable task group
    scope_type: concrete_coding_local
    readiness: ready_after_material_preview_unit

  - order_no: 8
    work_group_id: PF-CWG-008
    work_group_name: material export route task group
    scope_type: concrete_coding_local
    readiness: ready_after_material_export_unit

  - order_no: 9
    work_group_id: PF-CWG-011
    work_group_name: sync status UI task group
    scope_type: concrete_coding_boundary_aware
    readiness: ready_after_sync_visibility_unit_and_boundary_safe_scope

  - order_no: 10
    work_group_id: PF-CWG-012
    work_group_name: cache refresh trigger task group
    scope_type: concrete_coding_boundary_aware
    readiness: ready_after_cache_refresh_unit_and_boundary_safe_scope

  - order_no: 11
    work_group_id: PF-CWG-009
    work_group_name: repository implementation task group
    scope_type: concrete_coding_boundary_aware
    readiness: ready_after_repository_impl_unit

  - order_no: 12
    work_group_id: PF-CWG-010
    work_group_name: gateway implementation task group
    scope_type: concrete_coding_boundary_aware
    readiness: ready_after_gateway_impl_unit_and_boundary_safe_scope

important_rule:
Boundary-aware concrete coding groups remain later than core local groups
unless explicitly confirmed safe.
