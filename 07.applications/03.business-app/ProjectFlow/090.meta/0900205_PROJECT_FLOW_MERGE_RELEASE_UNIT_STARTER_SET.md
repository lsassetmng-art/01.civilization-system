# ============================================================
# PROJECT FLOW MERGE RELEASE UNIT STARTER SET
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides the first recommended merge / release-prep units.

starter_units:

PF-MRG-001:
- unit_name: app entry merge candidate unit
- source_commit_pr_units:
  - PF-CPR-001
- scope_type: merge_release_local
- prerequisites:
  - approved commit_unit or reviewed_change_set

PF-MRG-002:
- unit_name: bootstrap startup merge candidate unit
- source_commit_pr_units:
  - PF-CPR-002
- scope_type: merge_release_local
- prerequisites:
  - approved commit_unit or reviewed_change_set

PF-MRG-003:
- unit_name: navigation foundation merge candidate unit
- source_commit_pr_units:
  - PF-CPR-003
- scope_type: merge_release_local
- prerequisites:
  - approved commit_unit or reviewed_change_set

PF-MRG-004:
- unit_name: dashboard container merge candidate unit
- source_commit_pr_units:
  - PF-CPR-004
  - PF-CPR-005
  - PF-CPR-006
- scope_type: merge_release_local
- prerequisites:
  - approved reviewed_change_set
  - compatible approved scope

PF-MRG-005:
- unit_name: project detail reducer merge candidate unit
- source_commit_pr_units:
  - PF-CPR-007
- scope_type: merge_release_local
- prerequisites:
  - approved reviewed_change_set

PF-MRG-006:
- unit_name: preview rendering merge candidate unit
- source_commit_pr_units:
  - PF-CPR-008
- scope_type: merge_release_local
- prerequisites:
  - approved reviewed_change_set

PF-MRG-007:
- unit_name: export route merge candidate unit
- source_commit_pr_units:
  - PF-CPR-009
- scope_type: merge_release_local
- prerequisites:
  - approved reviewed_change_set

PF-MRG-008:
- unit_name: repository implementation merge candidate unit
- source_commit_pr_units:
  - PF-CPR-010
- scope_type: merge_release_boundary_aware
- prerequisites:
  - approved reviewed_change_set
  - blocked scope excluded

PF-MRG-009:
- unit_name: gateway mapping merge candidate unit
- source_commit_pr_units:
  - PF-CPR-011
- scope_type: merge_release_boundary_aware
- prerequisites:
  - approved reviewed_change_set
  - confirmed boundary-safe scope only

PF-MRG-010:
- unit_name: sync status ui merge candidate unit
- source_commit_pr_units:
  - PF-CPR-012
- scope_type: merge_release_boundary_aware
- prerequisites:
  - approved reviewed_change_set
  - blocked scope excluded

PF-MRG-011:
- unit_name: refresh trigger merge candidate unit
- source_commit_pr_units:
  - PF-CPR-013
- scope_type: merge_release_boundary_aware
- prerequisites:
  - approved reviewed_change_set
  - blocked scope excluded

PF-MRG-012:
- unit_name: first release-prep packaging unit
- source_merge_units:
  - PF-MRG-001
  - PF-MRG-002
  - PF-MRG-003
  - PF-MRG-004
- scope_type: release_prep_local
- prerequisites:
  - approved merge candidate units
  - blocked scope excluded
