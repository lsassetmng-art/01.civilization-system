# ============================================================
# PROJECT FLOW COMMIT PR UNIT DELIVERABLE TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for defining deliverables
for commit / PR-sized units.

template_fields:
- unit_id
- unit_name
- deliverable_name
- deliverable_type
- objective
- source_outputs
- completion_condition
- blocked_by
- notes

deliverable_type_candidates:
- commit_unit
- pr_unit
- reviewed_change_set
- scoped_diff_set
