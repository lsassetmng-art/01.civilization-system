# ============================================================
# PROJECT FLOW MERGE RELEASE UNIT DELIVERABLE TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for defining deliverables
for merge / release-prep units.

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
- merge_candidate_set
- reviewed_merge_bundle
- release_prep_bundle
- scoped_merge_summary
