# ============================================================
# PROJECT FLOW FEATURE SLICE EXECUTION LEDGER
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides an execution ledger
for early feature-slice planning after starter deliverables are ready.

feature_slice_execution_ledger:

  - order_no: 1
    feature_slice_name: dashboard_ui_state_slice
    local_or_boundary_aware: local
    upstream_deliverables:
      - module_map
      - state_event_matrix
    readiness: ready_when_pf_imp_001_and_002_reviewed

  - order_no: 2
    feature_slice_name: project_detail_state_slice
    local_or_boundary_aware: local
    upstream_deliverables:
      - module_map
      - state_event_matrix
      - screen_to_usecase_map
    readiness: ready_when_pf_imp_001_and_002_reviewed

  - order_no: 3
    feature_slice_name: task_feature_slice
    local_or_boundary_aware: local
    upstream_deliverables:
      - module_map
      - state_event_matrix
      - screen_to_usecase_map
    readiness: ready_when_pf_imp_001_and_002_reviewed

  - order_no: 4
    feature_slice_name: customer_material_slice_group
    local_or_boundary_aware: mostly_local
    upstream_deliverables:
      - customer_material_slice_plan
      - material_adapter_map
      - state_event_matrix
    readiness: ready_when_pf_imp_004_reviewed

  - order_no: 5
    feature_slice_name: sync_status_ui_slice
    local_or_boundary_aware: boundary_aware
    upstream_deliverables:
      - cache_sync_plan
      - sync_visibility_note
    readiness: ready_when_pf_imp_005_reviewed_and_boundary_clear_enough

  - order_no: 6
    feature_slice_name: local_repository_slice
    local_or_boundary_aware: boundary_aware
    upstream_deliverables:
      - repository_gateway_map
      - boundary_split_note
    readiness: ready_when_pf_imp_003_reviewed

  - order_no: 7
    feature_slice_name: businessos_gateway_slice
    local_or_boundary_aware: boundary_aware
    upstream_deliverables:
      - repository_gateway_map
      - boundary_split_note
      - exact_mediated_payload_direction
    readiness: ready_when_pf_imp_003_reviewed_and_boundary_clear

important_rule:
Boundary-aware slices remain later than core local slices
unless their prerequisites are explicitly confirmed.
