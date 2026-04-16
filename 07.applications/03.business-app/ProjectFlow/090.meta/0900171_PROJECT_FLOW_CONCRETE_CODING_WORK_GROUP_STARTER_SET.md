# ============================================================
# PROJECT FLOW CONCRETE CODING WORK GROUP STARTER SET
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides the first recommended concrete coding work groups.

starter_work_groups:

PF-CWG-001:
- work_group_name: app entry file task group
- source_unit:
  - PF-UNIT-001
- scope_type: concrete_coding_local
- prerequisites:
  - approved entry_wiring_unit

PF-CWG-002:
- work_group_name: root navigation graph task group
- source_unit:
  - PF-UNIT-002
- scope_type: concrete_coding_local
- prerequisites:
  - approved navigation_unit

PF-CWG-003:
- work_group_name: dashboard container composable task group
- source_unit:
  - PF-UNIT-003
- scope_type: concrete_coding_local
- prerequisites:
  - approved ui_container_unit

PF-CWG-004:
- work_group_name: dashboard reducer implementation task group
- source_unit:
  - PF-UNIT-004
- scope_type: concrete_coding_local
- prerequisites:
  - approved state_reducer_unit

PF-CWG-005:
- work_group_name: dashboard viewmodel implementation task group
- source_unit:
  - PF-UNIT-005
- scope_type: concrete_coding_local
- prerequisites:
  - approved viewmodel_unit

PF-CWG-006:
- work_group_name: project detail reducer implementation task group
- source_unit:
  - PF-UNIT-006
- scope_type: concrete_coding_local
- prerequisites:
  - approved state_reducer_unit

PF-CWG-007:
- work_group_name: material preview composable task group
- source_unit:
  - PF-UNIT-007
- scope_type: concrete_coding_local
- prerequisites:
  - approved preview_unit

PF-CWG-008:
- work_group_name: material export route task group
- source_unit:
  - PF-UNIT-008
- scope_type: concrete_coding_local
- prerequisites:
  - approved export_routing_unit

PF-CWG-009:
- work_group_name: repository implementation task group
- source_unit:
  - PF-UNIT-009
- scope_type: concrete_coding_boundary_aware
- prerequisites:
  - approved repository_impl_unit
  - blocked scope excluded

PF-CWG-010:
- work_group_name: gateway implementation task group
- source_unit:
  - PF-UNIT-010
- scope_type: concrete_coding_boundary_aware
- prerequisites:
  - approved gateway_impl_unit
  - confirmed boundary-safe scope only

PF-CWG-011:
- work_group_name: sync status UI task group
- source_unit:
  - PF-UNIT-011
- scope_type: concrete_coding_boundary_aware
- prerequisites:
  - approved sync_visibility_unit
  - blocked scope excluded

PF-CWG-012:
- work_group_name: cache refresh trigger task group
- source_unit:
  - PF-UNIT-012
- scope_type: concrete_coding_boundary_aware
- prerequisites:
  - approved cache_refresh_unit
  - blocked scope excluded
