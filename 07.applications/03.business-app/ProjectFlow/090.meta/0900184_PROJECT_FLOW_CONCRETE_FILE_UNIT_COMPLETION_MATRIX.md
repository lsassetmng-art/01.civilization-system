# ============================================================
# PROJECT FLOW CONCRETE FILE UNIT COMPLETION MATRIX
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines completion conditions
for the first concrete file/task units.

completion_matrix:

PF-FILE-001:
- unit_name: app entry file unit
- expected_deliverables:
  - entry_file
- completion_condition:
  - app entry file responsibility is explicit
  - entry ownership remains explicit

PF-FILE-002:
- unit_name: bootstrap initializer file unit
- expected_deliverables:
  - initializer_file
- completion_condition:
  - bootstrap initializer responsibility is explicit
  - startup sequencing remains explicit

PF-FILE-003:
- unit_name: root navigation graph file unit
- expected_deliverables:
  - navigation_graph_file
- completion_condition:
  - root navigation graph responsibility is explicit
  - main route graph remains explicit

PF-FILE-004:
- unit_name: dashboard container file unit
- expected_deliverables:
  - screen_container_file
- completion_condition:
  - dashboard container file responsibility is explicit
  - local orchestration remains preserved

PF-FILE-005:
- unit_name: dashboard reducer file unit
- expected_deliverables:
  - reducer_file
- completion_condition:
  - dashboard reducer file responsibility is explicit
  - state transition handling remains explicit

PF-FILE-006:
- unit_name: dashboard viewmodel file unit
- expected_deliverables:
  - viewmodel_file
- completion_condition:
  - dashboard viewmodel responsibility is explicit
  - action dispatch boundary remains explicit

PF-FILE-007:
- unit_name: project detail reducer file unit
- expected_deliverables:
  - reducer_file
- completion_condition:
  - project detail reducer responsibility is explicit
  - ERP reference versus local editable scope remains separated

PF-FILE-008:
- unit_name: material preview file unit
- expected_deliverables:
  - preview_file
- completion_condition:
  - material preview file responsibility is explicit
  - local wording adjustment surface remains explicit

PF-FILE-009:
- unit_name: material export route file unit
- expected_deliverables:
  - export_route_file
- completion_condition:
  - material export route responsibility is explicit
  - review-aware export path remains explicit

PF-FILE-010:
- unit_name: repository implementation file unit
- expected_deliverables:
  - repository_file
- completion_condition:
  - repository file responsibility is explicit
  - local ownership remains explicit

PF-FILE-011:
- unit_name: gateway implementation file unit
- expected_deliverables:
  - gateway_file
- completion_condition:
  - gateway file responsibility is explicit
  - blocked boundary scope remains excluded

PF-FILE-012:
- unit_name: sync status UI file unit
- expected_deliverables:
  - sync_ui_file
- completion_condition:
  - sync status UI responsibility is explicit
  - sync state remains distinct from business truth

PF-FILE-013:
- unit_name: cache refresh trigger file unit
- expected_deliverables:
  - cache_trigger_file
- completion_condition:
  - cache refresh trigger responsibility is explicit
  - mediated refresh assumption remains explicit
