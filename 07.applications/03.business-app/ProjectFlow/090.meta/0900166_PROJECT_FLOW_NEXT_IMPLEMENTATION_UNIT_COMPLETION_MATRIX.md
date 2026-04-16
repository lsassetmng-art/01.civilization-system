# ============================================================
# PROJECT FLOW NEXT IMPLEMENTATION UNIT COMPLETION MATRIX
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines completion conditions
for the first next implementation units.

completion_matrix:

PF-UNIT-001:
- unit_name: app entry wiring unit
- expected_deliverables:
  - entry_wiring_unit
- completion_condition:
  - app entry wiring is explicit
  - root entry ownership remains explicit

PF-UNIT-002:
- unit_name: root navigation unit
- expected_deliverables:
  - navigation_unit
- completion_condition:
  - root navigation flow is explicit
  - major entry routes remain explicit

PF-UNIT-003:
- unit_name: dashboard UI container unit
- expected_deliverables:
  - ui_container_unit
- completion_condition:
  - dashboard container structure is explicit
  - local orchestration remains preserved

PF-UNIT-004:
- unit_name: dashboard state reducer unit
- expected_deliverables:
  - state_reducer_unit
- completion_condition:
  - dashboard state reducer scope is explicit
  - state transitions remain aligned with approved planning

PF-UNIT-005:
- unit_name: dashboard viewmodel unit
- expected_deliverables:
  - viewmodel_unit
- completion_condition:
  - dashboard viewmodel responsibility is explicit
  - action routing remains aligned with approved planning

PF-UNIT-006:
- unit_name: project detail state reducer unit
- expected_deliverables:
  - state_reducer_unit
- completion_condition:
  - project detail state reducer scope is explicit
  - ERP reference versus local editable scope remains separated

PF-UNIT-007:
- unit_name: customer material preview unit
- expected_deliverables:
  - preview_unit
- completion_condition:
  - customer material preview flow is explicit
  - local wording adjustment area remains explicit

PF-UNIT-008:
- unit_name: customer material export routing unit
- expected_deliverables:
  - export_routing_unit
- completion_condition:
  - export routing is explicit
  - review-aware export boundary remains explicit

PF-UNIT-009:
- unit_name: local repository implementation unit
- expected_deliverables:
  - repository_impl_unit
- completion_condition:
  - local repository implementation scope is explicit
  - local ownership remains explicit

PF-UNIT-010:
- unit_name: BusinessOS gateway implementation unit
- expected_deliverables:
  - gateway_impl_unit
- completion_condition:
  - BusinessOS gateway implementation scope is explicit
  - blocked boundary scope remains excluded

PF-UNIT-011:
- unit_name: sync visibility unit
- expected_deliverables:
  - sync_visibility_unit
- completion_condition:
  - sync visibility behavior is explicit
  - sync state remains distinct from business truth

PF-UNIT-012:
- unit_name: cache refresh unit
- expected_deliverables:
  - cache_refresh_unit
- completion_condition:
  - cache refresh behavior is explicit
  - mediated refresh assumptions remain explicit
