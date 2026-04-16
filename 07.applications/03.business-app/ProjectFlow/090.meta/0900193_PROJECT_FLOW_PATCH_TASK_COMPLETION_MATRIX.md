# ============================================================
# PROJECT FLOW PATCH TASK COMPLETION MATRIX
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines completion conditions
for the first patch-level coding tasks.

completion_matrix:

PF-PATCH-001:
- patch_task_name: app entry import patch task
- expected_deliverables:
  - import_patch
- completion_condition:
  - app entry import patch scope is explicit
  - import responsibility remains explicit

PF-PATCH-002:
- patch_task_name: app entry bootstrap call patch task
- expected_deliverables:
  - bootstrap_patch
- completion_condition:
  - bootstrap call patch scope is explicit
  - startup call path remains explicit

PF-PATCH-003:
- patch_task_name: navigation graph declaration patch task
- expected_deliverables:
  - nav_graph_patch
- completion_condition:
  - navigation graph declaration patch scope is explicit
  - route declaration remains explicit

PF-PATCH-004:
- patch_task_name: dashboard container composition patch task
- expected_deliverables:
  - container_patch
- completion_condition:
  - dashboard container composition patch scope is explicit
  - local orchestration remains preserved

PF-PATCH-005:
- patch_task_name: reducer state transition patch task
- expected_deliverables:
  - reducer_patch
- completion_condition:
  - reducer state transition patch scope is explicit
  - state transitions remain aligned with approved file outputs

PF-PATCH-006:
- patch_task_name: viewmodel state exposure patch task
- expected_deliverables:
  - viewmodel_patch
- completion_condition:
  - viewmodel state exposure patch scope is explicit
  - action exposure boundary remains explicit

PF-PATCH-007:
- patch_task_name: project detail reducer branch patch task
- expected_deliverables:
  - reducer_patch
- completion_condition:
  - project detail reducer branch patch scope is explicit
  - ERP reference versus local editable scope remains separated

PF-PATCH-008:
- patch_task_name: preview rendering patch task
- expected_deliverables:
  - preview_patch
- completion_condition:
  - preview rendering patch scope is explicit
  - local wording surface remains explicit

PF-PATCH-009:
- patch_task_name: export route wiring patch task
- expected_deliverables:
  - export_patch
- completion_condition:
  - export route wiring patch scope is explicit
  - review-aware export path remains explicit

PF-PATCH-010:
- patch_task_name: repository method implementation patch task
- expected_deliverables:
  - repository_patch
- completion_condition:
  - repository method patch scope is explicit
  - local ownership remains explicit

PF-PATCH-011:
- patch_task_name: gateway request mapping patch task
- expected_deliverables:
  - gateway_patch
- completion_condition:
  - gateway request mapping patch scope is explicit
  - blocked boundary scope remains excluded

PF-PATCH-012:
- patch_task_name: sync status rendering patch task
- expected_deliverables:
  - sync_ui_patch
- completion_condition:
  - sync status rendering patch scope is explicit
  - sync state remains distinct from business truth

PF-PATCH-013:
- patch_task_name: refresh trigger patch task
- expected_deliverables:
  - refresh_patch
- completion_condition:
  - refresh trigger patch scope is explicit
  - mediated refresh assumption remains explicit
