# ============================================================
# PROJECT FLOW CONCRETE CODING WORK GROUP COMPLETION MATRIX
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines completion conditions
for the first concrete coding work groups.

completion_matrix:

PF-CWG-001:
- work_group_name: app entry file task group
- expected_deliverables:
  - entry_file_group
- completion_condition:
  - app entry file scope is explicit
  - root bootstrap ownership remains explicit

PF-CWG-002:
- work_group_name: root navigation graph task group
- expected_deliverables:
  - navigation_graph_group
- completion_condition:
  - root navigation graph scope is explicit
  - main route ownership remains explicit

PF-CWG-003:
- work_group_name: dashboard container composable task group
- expected_deliverables:
  - composable_group
- completion_condition:
  - dashboard container composable scope is explicit
  - local orchestration is preserved

PF-CWG-004:
- work_group_name: dashboard reducer implementation task group
- expected_deliverables:
  - reducer_group
- completion_condition:
  - dashboard reducer implementation scope is explicit
  - state transitions remain aligned with approved unit outputs

PF-CWG-005:
- work_group_name: dashboard viewmodel implementation task group
- expected_deliverables:
  - viewmodel_group
- completion_condition:
  - dashboard viewmodel implementation scope is explicit
  - action routing remains aligned with approved unit outputs

PF-CWG-006:
- work_group_name: project detail reducer implementation task group
- expected_deliverables:
  - reducer_group
- completion_condition:
  - project detail reducer scope is explicit
  - ERP reference versus local editable scope remains separated

PF-CWG-007:
- work_group_name: material preview composable task group
- expected_deliverables:
  - preview_group
- completion_condition:
  - material preview composable scope is explicit
  - local wording adjustment area remains explicit

PF-CWG-008:
- work_group_name: material export route task group
- expected_deliverables:
  - export_route_group
- completion_condition:
  - export route scope is explicit
  - review-aware export path remains explicit

PF-CWG-009:
- work_group_name: repository implementation task group
- expected_deliverables:
  - repository_group
- completion_condition:
  - local repository implementation scope is explicit
  - local ownership remains explicit

PF-CWG-010:
- work_group_name: gateway implementation task group
- expected_deliverables:
  - gateway_group
- completion_condition:
  - BusinessOS gateway implementation scope is explicit
  - blocked boundary scope remains excluded

PF-CWG-011:
- work_group_name: sync status UI task group
- expected_deliverables:
  - sync_ui_group
- completion_condition:
  - sync status UI scope is explicit
  - sync state remains distinct from business truth

PF-CWG-012:
- work_group_name: cache refresh trigger task group
- expected_deliverables:
  - cache_trigger_group
- completion_condition:
  - cache refresh trigger scope is explicit
  - mediated refresh assumptions remain explicit
