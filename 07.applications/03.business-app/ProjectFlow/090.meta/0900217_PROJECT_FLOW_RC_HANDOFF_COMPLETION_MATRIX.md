# ============================================================
# PROJECT FLOW RC HANDOFF COMPLETION MATRIX
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines completion conditions
for the first RC and handoff units.

completion_matrix:

PF-RC-001:
- unit_name: app entry release-candidate check unit
- expected_deliverables:
  - rc_check_bundle
- completion_condition:
  - app entry RC check scope is explicit
  - approved-scope boundary remains explicit

PF-RC-002:
- unit_name: bootstrap startup release-candidate check unit
- expected_deliverables:
  - rc_check_bundle
- completion_condition:
  - bootstrap startup RC check scope is explicit
  - startup boundary remains explicit

PF-RC-003:
- unit_name: navigation release-candidate check unit
- expected_deliverables:
  - rc_check_bundle
- completion_condition:
  - navigation RC check scope is explicit
  - route graph ownership remains explicit

PF-RC-004:
- unit_name: dashboard release-candidate check unit
- expected_deliverables:
  - rc_check_bundle
- completion_condition:
  - dashboard RC check scope is explicit
  - approved dashboard scope remains reviewable

PF-RC-005:
- unit_name: project detail release-candidate check unit
- expected_deliverables:
  - rc_check_bundle
- completion_condition:
  - project detail RC check scope is explicit
  - ERP reference versus local editable scope remains separated

PF-RC-006:
- unit_name: preview release-candidate check unit
- expected_deliverables:
  - rc_check_bundle
- completion_condition:
  - preview RC check scope is explicit
  - preview-local surface remains explicit

PF-RC-007:
- unit_name: export route release-candidate check unit
- expected_deliverables:
  - rc_check_bundle
- completion_condition:
  - export RC check scope is explicit
  - review-aware export path remains explicit

PF-RC-008:
- unit_name: repository release-candidate check unit
- expected_deliverables:
  - rc_check_bundle
- completion_condition:
  - repository RC check scope is explicit
  - local ownership remains explicit

PF-RC-009:
- unit_name: gateway release-candidate check unit
- expected_deliverables:
  - rc_check_bundle
- completion_condition:
  - gateway RC check scope is explicit
  - blocked boundary scope remains excluded

PF-RC-010:
- unit_name: sync ui release-candidate check unit
- expected_deliverables:
  - rc_check_bundle
- completion_condition:
  - sync UI RC check scope is explicit
  - sync state remains distinct from business truth

PF-RC-011:
- unit_name: refresh release-candidate check unit
- expected_deliverables:
  - rc_check_bundle
- completion_condition:
  - refresh RC check scope is explicit
  - mediated refresh assumption remains explicit

PF-RC-012:
- unit_name: release-candidate packaging unit
- expected_deliverables:
  - rc_packaging_bundle
- completion_condition:
  - RC packaging scope is explicit
  - only approved scope is included
  - blocked scope remains excluded

PF-RC-013:
- unit_name: implementation handoff summary unit
- expected_deliverables:
  - handoff_summary_bundle
  - readiness_summary
- completion_condition:
  - handoff summary reflects approved reality only
  - done / deferred / blocked / future sophistication are separated explicitly
