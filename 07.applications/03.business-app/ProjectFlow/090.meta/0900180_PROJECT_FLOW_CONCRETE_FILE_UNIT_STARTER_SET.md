# ============================================================
# PROJECT FLOW CONCRETE FILE UNIT STARTER SET
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides the first recommended concrete file/task units.

starter_units:

PF-FILE-001:
- unit_name: app entry file unit
- source_work_group:
  - PF-CWG-001
- scope_type: file_unit_local
- prerequisites:
  - approved entry_file_group

PF-FILE-002:
- unit_name: bootstrap initializer file unit
- source_work_group:
  - PF-CWG-001
- scope_type: file_unit_local
- prerequisites:
  - approved entry_file_group

PF-FILE-003:
- unit_name: root navigation graph file unit
- source_work_group:
  - PF-CWG-002
- scope_type: file_unit_local
- prerequisites:
  - approved navigation_graph_group

PF-FILE-004:
- unit_name: dashboard container file unit
- source_work_group:
  - PF-CWG-003
- scope_type: file_unit_local
- prerequisites:
  - approved composable_group

PF-FILE-005:
- unit_name: dashboard reducer file unit
- source_work_group:
  - PF-CWG-004
- scope_type: file_unit_local
- prerequisites:
  - approved reducer_group

PF-FILE-006:
- unit_name: dashboard viewmodel file unit
- source_work_group:
  - PF-CWG-005
- scope_type: file_unit_local
- prerequisites:
  - approved viewmodel_group

PF-FILE-007:
- unit_name: project detail reducer file unit
- source_work_group:
  - PF-CWG-006
- scope_type: file_unit_local
- prerequisites:
  - approved reducer_group

PF-FILE-008:
- unit_name: material preview file unit
- source_work_group:
  - PF-CWG-007
- scope_type: file_unit_local
- prerequisites:
  - approved preview_group

PF-FILE-009:
- unit_name: material export route file unit
- source_work_group:
  - PF-CWG-008
- scope_type: file_unit_local
- prerequisites:
  - approved export_route_group

PF-FILE-010:
- unit_name: repository implementation file unit
- source_work_group:
  - PF-CWG-009
- scope_type: file_unit_boundary_aware
- prerequisites:
  - approved repository_group
  - blocked scope excluded

PF-FILE-011:
- unit_name: gateway implementation file unit
- source_work_group:
  - PF-CWG-010
- scope_type: file_unit_boundary_aware
- prerequisites:
  - approved gateway_group
  - confirmed boundary-safe scope only

PF-FILE-012:
- unit_name: sync status UI file unit
- source_work_group:
  - PF-CWG-011
- scope_type: file_unit_boundary_aware
- prerequisites:
  - approved sync_ui_group
  - blocked scope excluded

PF-FILE-013:
- unit_name: cache refresh trigger file unit
- source_work_group:
  - PF-CWG-012
- scope_type: file_unit_boundary_aware
- prerequisites:
  - approved cache_trigger_group
  - blocked scope excluded
