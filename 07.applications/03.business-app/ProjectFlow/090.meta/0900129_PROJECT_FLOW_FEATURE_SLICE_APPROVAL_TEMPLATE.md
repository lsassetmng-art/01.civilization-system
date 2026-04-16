# ============================================================
# PROJECT FLOW FEATURE SLICE APPROVAL TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for approving feature-slice planning outputs.

approval_template_fields:
- feature_slice_name
- approval_date
- approval_result: approved_or_partially_approved_or_not_approved
- approved_scope
- blocked_scope
- next_allowed_slices
- notes

approval_rules:
- approval applies to planning outputs only
- partial approval must keep blocked scope explicit
- no downstream slice should start from unapproved blocked scope
