# ============================================================
# PROJECT FLOW CONCRETE FILE UNIT APPROVAL TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for approving concrete file/task unit outputs.

approval_template_fields:
- unit_id
- unit_name
- approval_date
- approval_result: approved_or_partially_approved_or_not_approved
- approved_scope
- blocked_scope
- next_allowed_file_units
- notes

approval_rules:
- approval applies only to explicit file-unit outputs
- partial approval must keep blocked scope explicit
- blocked scope must not unlock dependent file units
