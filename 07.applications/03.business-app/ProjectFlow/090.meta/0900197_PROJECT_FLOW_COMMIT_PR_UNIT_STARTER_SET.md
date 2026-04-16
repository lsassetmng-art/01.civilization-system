# ============================================================
# PROJECT FLOW COMMIT PR UNIT STARTER SET
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides the first recommended commit / PR-sized units.

starter_units:

PF-CPR-001:
- unit_name: app entry import commit unit
- source_patch_task:
  - PF-PATCH-001
- scope_type: commit_pr_local
- prerequisites:
  - approved import_patch

PF-CPR-002:
- unit_name: bootstrap call wiring commit unit
- source_patch_task:
  - PF-PATCH-002
- scope_type: commit_pr_local
- prerequisites:
  - approved bootstrap_patch

PF-CPR-003:
- unit_name: navigation graph declaration commit unit
- source_patch_task:
  - PF-PATCH-003
- scope_type: commit_pr_local
- prerequisites:
  - approved nav_graph_patch

PF-CPR-004:
- unit_name: dashboard container composition commit unit
- source_patch_task:
  - PF-PATCH-004
- scope_type: commit_pr_local
- prerequisites:
  - approved container_patch

PF-CPR-005:
- unit_name: reducer state transition commit unit
- source_patch_task:
  - PF-PATCH-005
- scope_type: commit_pr_local
- prerequisites:
  - approved reducer_patch

PF-CPR-006:
- unit_name: viewmodel state exposure commit unit
- source_patch_task:
  - PF-PATCH-006
- scope_type: commit_pr_local
- prerequisites:
  - approved viewmodel_patch

PF-CPR-007:
- unit_name: project detail reducer branch commit unit
- source_patch_task:
  - PF-PATCH-007
- scope_type: commit_pr_local
- prerequisites:
  - approved reducer_patch

PF-CPR-008:
- unit_name: preview rendering commit unit
- source_patch_task:
  - PF-PATCH-008
- scope_type: commit_pr_local
- prerequisites:
  - approved preview_patch

PF-CPR-009:
- unit_name: export route wiring commit unit
- source_patch_task:
  - PF-PATCH-009
- scope_type: commit_pr_local
- prerequisites:
  - approved export_patch

PF-CPR-010:
- unit_name: repository method implementation commit unit
- source_patch_task:
  - PF-PATCH-010
- scope_type: commit_pr_boundary_aware
- prerequisites:
  - approved repository_patch
  - blocked scope excluded

PF-CPR-011:
- unit_name: gateway request mapping commit unit
- source_patch_task:
  - PF-PATCH-011
- scope_type: commit_pr_boundary_aware
- prerequisites:
  - approved gateway_patch
  - confirmed boundary-safe scope only

PF-CPR-012:
- unit_name: sync status rendering commit unit
- source_patch_task:
  - PF-PATCH-012
- scope_type: commit_pr_boundary_aware
- prerequisites:
  - approved sync_ui_patch
  - blocked scope excluded

PF-CPR-013:
- unit_name: refresh trigger commit unit
- source_patch_task:
  - PF-PATCH-013
- scope_type: commit_pr_boundary_aware
- prerequisites:
  - approved refresh_patch
  - blocked scope excluded
