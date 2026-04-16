# ============================================================
# PROJECT FLOW NEXT IMPLEMENTATION UNIT STARTER SET
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides the first recommended next implementation units.

starter_units:

PF-UNIT-001:
- unit_name: app entry wiring unit
- source_task:
  - PF-TASK-001
- scope_type: implementation_unit_local
- prerequisites:
  - approved module_skeleton

PF-UNIT-002:
- unit_name: root navigation unit
- source_task:
  - PF-TASK-001
- scope_type: implementation_unit_local
- prerequisites:
  - approved module_skeleton

PF-UNIT-003:
- unit_name: dashboard UI container unit
- source_task:
  - PF-TASK-002
- scope_type: implementation_unit_local
- prerequisites:
  - approved package_skeleton

PF-UNIT-004:
- unit_name: dashboard state reducer unit
- source_task:
  - PF-TASK-003
- scope_type: implementation_unit_local
- prerequisites:
  - approved state_holder_stub

PF-UNIT-005:
- unit_name: dashboard viewmodel unit
- source_task:
  - PF-TASK-003
- scope_type: implementation_unit_local
- prerequisites:
  - approved viewmodel_stub

PF-UNIT-006:
- unit_name: project detail state reducer unit
- source_task:
  - PF-TASK-004
- scope_type: implementation_unit_local
- prerequisites:
  - approved state_holder_stub

PF-UNIT-007:
- unit_name: customer material preview unit
- source_task:
  - PF-TASK-005
- scope_type: implementation_unit_local
- prerequisites:
  - approved material_flow_stub

PF-UNIT-008:
- unit_name: customer material export routing unit
- source_task:
  - PF-TASK-005
- scope_type: implementation_unit_local
- prerequisites:
  - approved material_flow_stub

PF-UNIT-009:
- unit_name: local repository implementation unit
- source_task:
  - PF-TASK-006
- scope_type: implementation_unit_boundary_aware
- prerequisites:
  - approved repository_contract_stub
  - blocked scope excluded

PF-UNIT-010:
- unit_name: BusinessOS gateway implementation unit
- source_task:
  - PF-TASK-007
- scope_type: implementation_unit_boundary_aware
- prerequisites:
  - approved gateway_contract_stub
  - confirmed boundary-safe scope only

PF-UNIT-011:
- unit_name: sync visibility unit
- source_task:
  - PF-TASK-008
- scope_type: implementation_unit_boundary_aware
- prerequisites:
  - approved cache_sync_stub
  - blocked scope excluded

PF-UNIT-012:
- unit_name: cache refresh unit
- source_task:
  - PF-TASK-008
- scope_type: implementation_unit_boundary_aware
- prerequisites:
  - approved cache_sync_stub
  - blocked scope excluded
