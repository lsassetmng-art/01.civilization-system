# ============================================================
# PROJECT FLOW RC HANDOFF UNIT EXECUTION LEDGER
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides an execution ledger
for early release-candidate and handoff units.

execution_ledger:

  - order_no: 1
    unit_id: PF-RC-001
    unit_name: app entry release-candidate check unit
    scope_type: rc_local
    readiness: ready_first

  - order_no: 2
    unit_id: PF-RC-002
    unit_name: bootstrap startup release-candidate check unit
    scope_type: rc_local
    readiness: ready_after_app_entry_rc_check

  - order_no: 3
    unit_id: PF-RC-003
    unit_name: navigation release-candidate check unit
    scope_type: rc_local
    readiness: ready_after_navigation_merge_bundle

  - order_no: 4
    unit_id: PF-RC-004
    unit_name: dashboard release-candidate check unit
    scope_type: rc_local
    readiness: ready_after_dashboard_merge_bundle

  - order_no: 5
    unit_id: PF-RC-005
    unit_name: project detail release-candidate check unit
    scope_type: rc_local
    readiness: ready_after_project_detail_merge_bundle

  - order_no: 6
    unit_id: PF-RC-006
    unit_name: preview release-candidate check unit
    scope_type: rc_local
    readiness: ready_after_preview_merge_bundle

  - order_no: 7
    unit_id: PF-RC-007
    unit_name: export route release-candidate check unit
    scope_type: rc_local
    readiness: ready_after_export_merge_bundle

  - order_no: 8
    unit_id: PF-RC-010
    unit_name: sync ui release-candidate check unit
    scope_type: rc_boundary_aware
    readiness: ready_after_sync_merge_bundle_and_boundary_safe_scope

  - order_no: 9
    unit_id: PF-RC-011
    unit_name: refresh release-candidate check unit
    scope_type: rc_boundary_aware
    readiness: ready_after_refresh_merge_bundle_and_boundary_safe_scope

  - order_no: 10
    unit_id: PF-RC-008
    unit_name: repository release-candidate check unit
    scope_type: rc_boundary_aware
    readiness: ready_after_repository_merge_bundle

  - order_no: 11
    unit_id: PF-RC-009
    unit_name: gateway release-candidate check unit
    scope_type: rc_boundary_aware
    readiness: ready_after_gateway_merge_bundle_and_boundary_safe_scope

  - order_no: 12
    unit_id: PF-RC-012
    unit_name: release-candidate packaging unit
    scope_type: rc_packaging
    readiness: ready_after_core_rc_checks

  - order_no: 13
    unit_id: PF-RC-013
    unit_name: implementation handoff summary unit
    scope_type: handoff_summary
    readiness: ready_after_release_prep_bundle_and_rc_scope_summary

important_rule:
Boundary-aware RC units remain later than core local RC units
unless explicitly confirmed safe.
