# ============================================================
# PROJECT FLOW FEATURE SLICE PLANNING TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for planning a feature slice
after prerequisite deliverables are ready.

template_fields:
- feature_slice_name
- upstream_deliverables
- related_packages
- scope
- in_scope
- out_of_scope
- local_or_boundary_aware
- blocked_by
- expected_planning_outputs
- ready_to_start: yes_no
- notes

rules:
- a feature slice should list its upstream deliverables explicitly
- blocked_by must remain explicit
- boundary-aware slice should preserve boundary conditions
