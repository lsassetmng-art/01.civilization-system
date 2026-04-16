# ============================================================
# PROJECT FLOW ACTUAL IMPLEMENTATION TASK EXECUTION LEDGER
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides a first-wave execution ledger
for actual implementation tasks.

execution_ledger:

  - order_no: 1
    task_id: PF-TASK-001
    task_name: app-projectflow module skeleton task
    scope_type: actual_impl_local
    readiness: ready_first

  - order_no: 2
    task_id: PF-TASK-002
    task_name: feature-dashboard package skeleton task
    scope_type: actual_impl_local
    readiness: ready_after_app_module_skeleton

  - order_no: 3
    task_id: PF-TASK-003
    task_name: dashboard state-holder task
    scope_type: actual_impl_local
    readiness: ready_after_dashboard_package_skeleton

  - order_no: 4
    task_id: PF-TASK-004
    task_name: project detail state-holder task
    scope_type: actual_impl_local
    readiness: ready_after_core_screen_boundary_outputs

  - order_no: 5
    task_id: PF-TASK-005
    task_name: customer material flow skeleton task
    scope_type: actual_impl_local
    readiness: ready_after_material_flow_breakdown

  - order_no: 6
    task_id: PF-TASK-008
    task_name: cache and sync surface skeleton task
    scope_type: actual_impl_boundary_aware
    readiness: ready_after_boundary-safe cache_sync approval

  - order_no: 7
    task_id: PF-TASK-006
    task_name: local repository contract skeleton task
    scope_type: actual_impl_boundary_aware
    readiness: ready_after_repository_contract approval

  - order_no: 8
    task_id: PF-TASK-007
    task_name: BusinessOS gateway contract skeleton task
    scope_type: actual_impl_boundary_aware
    readiness: ready_after_gateway_contract approval and boundary-safe scope confirmation

important_rule:
Boundary-aware tasks remain later than core local tasks
unless explicitly confirmed safe.
