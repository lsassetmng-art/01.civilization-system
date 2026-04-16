# ============================================================
# PROJECT FLOW RC HANDOFF UNIT DELIVERABLE TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for defining deliverables
for release-candidate and handoff units.

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
- rc_check_bundle
- rc_packaging_bundle
- handoff_summary_bundle
- readiness_summary
