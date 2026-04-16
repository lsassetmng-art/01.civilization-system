# ============================================================
# PROJECT FLOW PATCH TASK STARTER SET
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides the first recommended patch-level coding tasks.

starter_patch_tasks:

PF-PATCH-001:
- patch_task_name: app entry import patch task
- source_file_unit:
  - PF-FILE-001
- scope_type: patch_local
- prerequisites:
  - approved entry_file

PF-PATCH-002:
- patch_task_name: app entry bootstrap call patch task
- source_file_unit:
  - PF-FILE-001
- scope_type: patch_local
- prerequisites:
  - approved entry_file

PF-PATCH-003:
- patch_task_name: navigation graph declaration patch task
- source_file_unit:
  - PF-FILE-003
- scope_type: patch_local
- prerequisites:
  - approved navigation_graph_file

PF-PATCH-004:
- patch_task_name: dashboard container composition patch task
- source_file_unit:
  - PF-FILE-004
- scope_type: patch_local
- prerequisites:
  - approved screen_container_file

PF-PATCH-005:
- patch_task_name: reducer state transition patch task
- source_file_unit:
  - PF-FILE-005
- scope_type: patch_local
- prerequisites:
  - approved reducer_file

PF-PATCH-006:
- patch_task_name: viewmodel state exposure patch task
- source_file_unit:
  - PF-FILE-006
- scope_type: patch_local
- prerequisites:
  - approved viewmodel_file

PF-PATCH-007:
- patch_task_name: project detail reducer branch patch task
- source_file_unit:
  - PF-FILE-007
- scope_type: patch_local
- prerequisites:
  - approved reducer_file

PF-PATCH-008:
- patch_task_name: preview rendering patch task
- source_file_unit:
  - PF-FILE-008
- scope_type: patch_local
- prerequisites:
  - approved preview_file

PF-PATCH-009:
- patch_task_name: export route wiring patch task
- source_file_unit:
  - PF-FILE-009
- scope_type: patch_local
- prerequisites:
  - approved export_route_file

PF-PATCH-010:
- patch_task_name: repository method implementation patch task
- source_file_unit:
  - PF-FILE-010
- scope_type: patch_boundary_aware
- prerequisites:
  - approved repository_file
  - blocked scope excluded

PF-PATCH-011:
- patch_task_name: gateway request mapping patch task
- source_file_unit:
  - PF-FILE-011
- scope_type: patch_boundary_aware
- prerequisites:
  - approved gateway_file
  - confirmed boundary-safe scope only

PF-PATCH-012:
- patch_task_name: sync status rendering patch task
- source_file_unit:
  - PF-FILE-012
- scope_type: patch_boundary_aware
- prerequisites:
  - approved sync_ui_file
  - blocked scope excluded

PF-PATCH-013:
- patch_task_name: refresh trigger patch task
- source_file_unit:
  - PF-FILE-013
- scope_type: patch_boundary_aware
- prerequisites:
  - approved cache_trigger_file
  - blocked scope excluded
