# ============================================================
# PROJECT FLOW NEXT IMPLEMENTATION UNIT EXECUTION LEDGER
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides an execution ledger
for early next implementation units.

execution_ledger:

  - order_no: 1
    unit_id: PF-UNIT-001
    unit_name: app entry wiring unit
    scope_type: implementation_unit_local
    readiness: ready_first

  - order_no: 2
    unit_id: PF-UNIT-002
    unit_name: root navigation unit
    scope_type: implementation_unit_local
    readiness: ready_after_app_entry_wiring

  - order_no: 3
    unit_id: PF-UNIT-003
    unit_name: dashboard UI container unit
    scope_type: implementation_unit_local
    readiness: ready_after_dashboard_package_skeleton

  - order_no: 4
    unit_id: PF-UNIT-004
    unit_name: dashboard state reducer unit
    scope_type: implementation_unit_local
    readiness: ready_after_dashboard_state_holder

  - order_no: 5
    unit_id: PF-UNIT-005
    unit_name: dashboard viewmodel unit
    scope_type: implementation_unit_local
    readiness: ready_after_dashboard_state_holder

  - order_no: 6
    unit_id: PF-UNIT-006
    unit_name: project detail state reducer unit
    scope_type: implementation_unit_local
    readiness: ready_after_project_detail_state_holder

  - order_no: 7
    unit_id: PF-UNIT-007
    unit_name: customer material preview unit
    scope_type: implementation_unit_local
    readiness: ready_after_material_flow_stub

  - order_no: 8
    unit_id: PF-UNIT-008
    unit_name: customer material export routing unit
    scope_type: implementation_unit_local
    readiness: ready_after_material_flow_stub

  - order_no: 9
    unit_id: PF-UNIT-011
    unit_name: sync visibility unit
    scope_type: implementation_unit_boundary_aware
    readiness: ready_after_cache_sync_stub_and_boundary_safe_scope

  - order_no: 10
    unit_id: PF-UNIT-012
    unit_name: cache refresh unit
    scope_type: implementation_unit_boundary_aware
    readiness: ready_after_cache_sync_stub_and_boundary_safe_scope

  - order_no: 11
    unit_id: PF-UNIT-009
    unit_name: local repository implementation unit
    scope_type: implementation_unit_boundary_aware
    readiness: ready_after_repository_contract_stub

  - order_no: 12
    unit_id: PF-UNIT-010
    unit_name: BusinessOS gateway implementation unit
    scope_type: implementation_unit_boundary_aware
    readiness: ready_after_gateway_contract_stub_and_boundary_safe_scope

important_rule:
Boundary-aware implementation units remain later than core local units
unless explicitly confirmed safe.
