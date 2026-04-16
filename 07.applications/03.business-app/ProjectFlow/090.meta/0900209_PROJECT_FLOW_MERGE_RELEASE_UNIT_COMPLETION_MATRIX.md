# ============================================================
# PROJECT FLOW MERGE RELEASE UNIT COMPLETION MATRIX
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines completion conditions
for the first merge / release-prep units.

completion_matrix:

PF-MRG-001:
- unit_name: app entry merge candidate unit
- expected_deliverables:
  - merge_candidate_set
- completion_condition:
  - app entry merge candidate scope is explicit
  - approved-scope boundary remains explicit

PF-MRG-002:
- unit_name: bootstrap startup merge candidate unit
- expected_deliverables:
  - merge_candidate_set
- completion_condition:
  - bootstrap startup merge candidate scope is explicit
  - startup boundary remains explicit

PF-MRG-003:
- unit_name: navigation foundation merge candidate unit
- expected_deliverables:
  - reviewed_merge_bundle
- completion_condition:
  - navigation foundation merge scope is explicit
  - route graph ownership remains explicit

PF-MRG-004:
- unit_name: dashboard container merge candidate unit
- expected_deliverables:
  - reviewed_merge_bundle
- completion_condition:
  - dashboard-related merge scope is explicit
  - combined approved scope remains reviewable

PF-MRG-005:
- unit_name: project detail reducer merge candidate unit
- expected_deliverables:
  - reviewed_merge_bundle
- completion_condition:
  - project detail reducer merge scope is explicit
  - ERP reference versus local editable boundary remains separated

PF-MRG-006:
- unit_name: preview rendering merge candidate unit
- expected_deliverables:
  - reviewed_merge_bundle
- completion_condition:
  - preview rendering merge scope is explicit
  - preview-local surface remains explicit

PF-MRG-007:
- unit_name: export route merge candidate unit
- expected_deliverables:
  - reviewed_merge_bundle
- completion_condition:
  - export route merge scope is explicit
  - review-aware export path remains explicit

PF-MRG-008:
- unit_name: repository implementation merge candidate unit
- expected_deliverables:
  - reviewed_merge_bundle
- completion_condition:
  - repository merge scope is explicit
  - local ownership remains explicit

PF-MRG-009:
- unit_name: gateway mapping merge candidate unit
- expected_deliverables:
  - reviewed_merge_bundle
- completion_condition:
  - gateway merge scope is explicit
  - blocked boundary scope remains excluded

PF-MRG-010:
- unit_name: sync status ui merge candidate unit
- expected_deliverables:
  - reviewed_merge_bundle
- completion_condition:
  - sync status ui merge scope is explicit
  - sync state remains distinct from business truth

PF-MRG-011:
- unit_name: refresh trigger merge candidate unit
- expected_deliverables:
  - reviewed_merge_bundle
- completion_condition:
  - refresh trigger merge scope is explicit
  - mediated refresh assumption remains explicit

PF-MRG-012:
- unit_name: first release-prep packaging unit
- expected_deliverables:
  - release_prep_bundle
- completion_condition:
  - release-prep package scope is explicit
  - only approved local merge scope is included
  - blocked scope remains excluded
