# ============================================================
# PROJECT FLOW COMMIT PR UNIT COMPLETION MATRIX
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines completion conditions
for the first commit / PR-sized units.

completion_matrix:

PF-CPR-001:
- unit_name: app entry import commit unit
- expected_deliverables:
  - commit_unit
- completion_condition:
  - app entry import change set is explicit
  - import responsibility remains explicit

PF-CPR-002:
- unit_name: bootstrap call wiring commit unit
- expected_deliverables:
  - commit_unit
- completion_condition:
  - bootstrap call change set is explicit
  - startup call path remains explicit

PF-CPR-003:
- unit_name: navigation graph declaration commit unit
- expected_deliverables:
  - commit_unit
- completion_condition:
  - navigation graph declaration change set is explicit
  - route declaration remains explicit

PF-CPR-004:
- unit_name: dashboard container composition commit unit
- expected_deliverables:
  - reviewed_change_set
- completion_condition:
  - dashboard container composition change set is explicit
  - local orchestration remains preserved

PF-CPR-005:
- unit_name: reducer state transition commit unit
- expected_deliverables:
  - reviewed_change_set
- completion_condition:
  - reducer state transition change set is explicit
  - state transitions remain aligned with approved patch outputs

PF-CPR-006:
- unit_name: viewmodel state exposure commit unit
- expected_deliverables:
  - reviewed_change_set
- completion_condition:
  - viewmodel state exposure change set is explicit
  - action exposure boundary remains explicit

PF-CPR-007:
- unit_name: project detail reducer branch commit unit
- expected_deliverables:
  - reviewed_change_set
- completion_condition:
  - project detail reducer branch change set is explicit
  - ERP reference versus local editable scope remains separated

PF-CPR-008:
- unit_name: preview rendering commit unit
- expected_deliverables:
  - reviewed_change_set
- completion_condition:
  - preview rendering change set is explicit
  - local wording surface remains explicit

PF-CPR-009:
- unit_name: export route wiring commit unit
- expected_deliverables:
  - reviewed_change_set
- completion_condition:
  - export route wiring change set is explicit
  - review-aware export path remains explicit

PF-CPR-010:
- unit_name: repository method implementation commit unit
- expected_deliverables:
  - reviewed_change_set
- completion_condition:
  - repository method implementation change set is explicit
  - local ownership remains explicit

PF-CPR-011:
- unit_name: gateway request mapping commit unit
- expected_deliverables:
  - reviewed_change_set
- completion_condition:
  - gateway request mapping change set is explicit
  - blocked boundary scope remains excluded

PF-CPR-012:
- unit_name: sync status rendering commit unit
- expected_deliverables:
  - reviewed_change_set
- completion_condition:
  - sync status rendering change set is explicit
  - sync state remains distinct from business truth

PF-CPR-013:
- unit_name: refresh trigger commit unit
- expected_deliverables:
  - reviewed_change_set
- completion_condition:
  - refresh trigger change set is explicit
  - mediated refresh assumption remains explicit
