# ============================================================
# PROJECT FLOW COMMIT PR UNIT EXECUTION LEDGER
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides an execution ledger
for early commit / PR-sized units.

execution_ledger:

  - order_no: 1
    unit_id: PF-CPR-001
    unit_name: app entry import commit unit
    scope_type: commit_pr_local
    readiness: ready_first

  - order_no: 2
    unit_id: PF-CPR-002
    unit_name: bootstrap call wiring commit unit
    scope_type: commit_pr_local
    readiness: ready_after_app_entry_import_commit

  - order_no: 3
    unit_id: PF-CPR-003
    unit_name: navigation graph declaration commit unit
    scope_type: commit_pr_local
    readiness: ready_after_navigation_graph_patch

  - order_no: 4
    unit_id: PF-CPR-004
    unit_name: dashboard container composition commit unit
    scope_type: commit_pr_local
    readiness: ready_after_dashboard_container_patch

  - order_no: 5
    unit_id: PF-CPR-005
    unit_name: reducer state transition commit unit
    scope_type: commit_pr_local
    readiness: ready_after_dashboard_reducer_patch

  - order_no: 6
    unit_id: PF-CPR-006
    unit_name: viewmodel state exposure commit unit
    scope_type: commit_pr_local
    readiness: ready_after_dashboard_viewmodel_patch

  - order_no: 7
    unit_id: PF-CPR-007
    unit_name: project detail reducer branch commit unit
    scope_type: commit_pr_local
    readiness: ready_after_project_detail_reducer_patch

  - order_no: 8
    unit_id: PF-CPR-008
    unit_name: preview rendering commit unit
    scope_type: commit_pr_local
    readiness: ready_after_preview_patch

  - order_no: 9
    unit_id: PF-CPR-009
    unit_name: export route wiring commit unit
    scope_type: commit_pr_local
    readiness: ready_after_export_patch

  - order_no: 10
    unit_id: PF-CPR-012
    unit_name: sync status rendering commit unit
    scope_type: commit_pr_boundary_aware
    readiness: ready_after_sync_ui_patch_and_boundary_safe_scope

  - order_no: 11
    unit_id: PF-CPR-013
    unit_name: refresh trigger commit unit
    scope_type: commit_pr_boundary_aware
    readiness: ready_after_refresh_patch_and_boundary_safe_scope

  - order_no: 12
    unit_id: PF-CPR-010
    unit_name: repository method implementation commit unit
    scope_type: commit_pr_boundary_aware
    readiness: ready_after_repository_patch

  - order_no: 13
    unit_id: PF-CPR-011
    unit_name: gateway request mapping commit unit
    scope_type: commit_pr_boundary_aware
    readiness: ready_after_gateway_patch_and_boundary_safe_scope

important_rule:
Boundary-aware commit / PR units remain later than core local units
unless explicitly confirmed safe.
