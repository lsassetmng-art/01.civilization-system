# ============================================================
# PROJECT FLOW MERGE RELEASE UNIT EXECUTION LEDGER
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides an execution ledger
for early merge / release-prep units.

execution_ledger:

  - order_no: 1
    unit_id: PF-MRG-001
    unit_name: app entry merge candidate unit
    scope_type: merge_release_local
    readiness: ready_first

  - order_no: 2
    unit_id: PF-MRG-002
    unit_name: bootstrap startup merge candidate unit
    scope_type: merge_release_local
    readiness: ready_after_app_entry_merge_candidate

  - order_no: 3
    unit_id: PF-MRG-003
    unit_name: navigation foundation merge candidate unit
    scope_type: merge_release_local
    readiness: ready_after_navigation_commit_unit

  - order_no: 4
    unit_id: PF-MRG-004
    unit_name: dashboard container merge candidate unit
    scope_type: merge_release_local
    readiness: ready_after_dashboard_related_commit_units

  - order_no: 5
    unit_id: PF-MRG-005
    unit_name: project detail reducer merge candidate unit
    scope_type: merge_release_local
    readiness: ready_after_project_detail_commit_unit

  - order_no: 6
    unit_id: PF-MRG-006
    unit_name: preview rendering merge candidate unit
    scope_type: merge_release_local
    readiness: ready_after_preview_commit_unit

  - order_no: 7
    unit_id: PF-MRG-007
    unit_name: export route merge candidate unit
    scope_type: merge_release_local
    readiness: ready_after_export_commit_unit

  - order_no: 8
    unit_id: PF-MRG-010
    unit_name: sync status ui merge candidate unit
    scope_type: merge_release_boundary_aware
    readiness: ready_after_sync_commit_unit_and_boundary_safe_scope

  - order_no: 9
    unit_id: PF-MRG-011
    unit_name: refresh trigger merge candidate unit
    scope_type: merge_release_boundary_aware
    readiness: ready_after_refresh_commit_unit_and_boundary_safe_scope

  - order_no: 10
    unit_id: PF-MRG-008
    unit_name: repository implementation merge candidate unit
    scope_type: merge_release_boundary_aware
    readiness: ready_after_repository_commit_unit

  - order_no: 11
    unit_id: PF-MRG-009
    unit_name: gateway mapping merge candidate unit
    scope_type: merge_release_boundary_aware
    readiness: ready_after_gateway_commit_unit_and_boundary_safe_scope

  - order_no: 12
    unit_id: PF-MRG-012
    unit_name: first release-prep packaging unit
    scope_type: release_prep_local
    readiness: ready_after_core_local_merge_candidates

important_rule:
Boundary-aware merge units remain later than core local merge units
unless explicitly confirmed safe.
