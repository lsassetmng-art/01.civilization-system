# ============================================================
# PROJECT FLOW PATCH TASK DELIVERABLE TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for defining deliverables
for patch-level coding tasks.

template_fields:
- patch_task_id
- patch_task_name
- deliverable_name
- deliverable_type
- objective
- source_outputs
- completion_condition
- blocked_by
- notes

deliverable_type_candidates:
- import_patch
- bootstrap_patch
- nav_graph_patch
- container_patch
- reducer_patch
- viewmodel_patch
- preview_patch
- export_patch
- repository_patch
- gateway_patch
- sync_ui_patch
- refresh_patch
