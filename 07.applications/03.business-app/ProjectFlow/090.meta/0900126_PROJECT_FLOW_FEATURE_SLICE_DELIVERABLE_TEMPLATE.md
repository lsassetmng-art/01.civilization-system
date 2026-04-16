# ============================================================
# PROJECT FLOW FEATURE SLICE DELIVERABLE TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for defining deliverables
for feature-slice planning.

template_fields:
- feature_slice_name
- local_or_boundary_aware
- upstream_deliverables
- deliverable_name
- deliverable_type
- objective
- expected_outputs
- completion_condition
- blocked_by
- notes

deliverable_type_candidates:
- ui_state_slice_note
- action_routing_note
- viewmodel_boundary_note
- repository_split_note
- gateway_split_note
- material_slice_note
- cache_sync_slice_note
