# ============================================================
# PROJECT FLOW CODING START EXECUTION LEDGER
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides an execution ledger for early coding-start planning packages.

execution_ledger:

  - order_no: 1
    package_id: PF-CODE-001
    package_name: Module Package Skeleton Breakdown
    local_or_boundary_aware: local
    readiness: ready_first
    expected_output:
      - package_breakdown_map

  - order_no: 2
    package_id: PF-CODE-002
    package_name: Screen ViewModel Boundary Breakdown
    local_or_boundary_aware: local
    readiness: ready_after_pf_code_001
    expected_output:
      - state_holder_breakdown
      - viewmodel_boundary_map

  - order_no: 3
    package_id: PF-CODE-004
    package_name: Customer Material Flow Breakdown
    local_or_boundary_aware: local
    readiness: ready_after_pf_code_002
    expected_output:
      - material_flow_breakdown

  - order_no: 4
    package_id: PF-CODE-005
    package_name: Cache and Sync Surface Breakdown
    local_or_boundary_aware: boundary_aware
    readiness: ready_after_pf_code_001_and_boundary_clear_enough
    expected_output:
      - cache_sync_surface_breakdown

  - order_no: 5
    package_id: PF-CODE-003
    package_name: Repository Contract Breakdown
    local_or_boundary_aware: boundary_aware
    readiness: ready_after_pf_code_001_and_confirmed_boundary_outputs
    expected_output:
      - repository_contract_map
      - gateway_contract_map

important_rule:
Boundary-aware coding-start packages remain later than core local packages
unless prerequisites are explicitly confirmed.
