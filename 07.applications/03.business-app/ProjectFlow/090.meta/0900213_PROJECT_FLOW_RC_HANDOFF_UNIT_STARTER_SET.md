# ============================================================
# PROJECT FLOW RC HANDOFF UNIT STARTER SET
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides the first recommended release-candidate and handoff units.

starter_units:

PF-RC-001:
- unit_name: app entry release-candidate check unit
- source_merge_release_units:
  - PF-MRG-001
- scope_type: rc_local
- prerequisites:
  - approved merge_candidate_set or reviewed_merge_bundle

PF-RC-002:
- unit_name: bootstrap startup release-candidate check unit
- source_merge_release_units:
  - PF-MRG-002
- scope_type: rc_local
- prerequisites:
  - approved merge_candidate_set or reviewed_merge_bundle

PF-RC-003:
- unit_name: navigation release-candidate check unit
- source_merge_release_units:
  - PF-MRG-003
- scope_type: rc_local
- prerequisites:
  - approved reviewed_merge_bundle

PF-RC-004:
- unit_name: dashboard release-candidate check unit
- source_merge_release_units:
  - PF-MRG-004
- scope_type: rc_local
- prerequisites:
  - approved reviewed_merge_bundle

PF-RC-005:
- unit_name: project detail release-candidate check unit
- source_merge_release_units:
  - PF-MRG-005
- scope_type: rc_local
- prerequisites:
  - approved reviewed_merge_bundle

PF-RC-006:
- unit_name: preview release-candidate check unit
- source_merge_release_units:
  - PF-MRG-006
- scope_type: rc_local
- prerequisites:
  - approved reviewed_merge_bundle

PF-RC-007:
- unit_name: export route release-candidate check unit
- source_merge_release_units:
  - PF-MRG-007
- scope_type: rc_local
- prerequisites:
  - approved reviewed_merge_bundle

PF-RC-008:
- unit_name: repository release-candidate check unit
- source_merge_release_units:
  - PF-MRG-008
- scope_type: rc_boundary_aware
- prerequisites:
  - approved reviewed_merge_bundle
  - blocked scope excluded

PF-RC-009:
- unit_name: gateway release-candidate check unit
- source_merge_release_units:
  - PF-MRG-009
- scope_type: rc_boundary_aware
- prerequisites:
  - approved reviewed_merge_bundle
  - confirmed boundary-safe scope only

PF-RC-010:
- unit_name: sync ui release-candidate check unit
- source_merge_release_units:
  - PF-MRG-010
- scope_type: rc_boundary_aware
- prerequisites:
  - approved reviewed_merge_bundle
  - blocked scope excluded

PF-RC-011:
- unit_name: refresh release-candidate check unit
- source_merge_release_units:
  - PF-MRG-011
- scope_type: rc_boundary_aware
- prerequisites:
  - approved reviewed_merge_bundle
  - blocked scope excluded

PF-RC-012:
- unit_name: release-candidate packaging unit
- source_merge_release_units:
  - PF-MRG-012
- scope_type: rc_packaging
- prerequisites:
  - approved release_prep_bundle
  - blocked scope excluded

PF-RC-013:
- unit_name: implementation handoff summary unit
- source_merge_release_units:
  - PF-MRG-012
- scope_type: handoff_summary
- prerequisites:
  - approved release_prep_bundle
  - approved-scope summary available
