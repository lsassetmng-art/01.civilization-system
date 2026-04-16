# ============================================================
# PROJECT FLOW REPORT APPROVAL POLICY
# ============================================================

status: canonical
layer: policy
application: ProjectFlow
owner: Boss
prepared_by: Zero

policy_statement:
Auto-generated reports are draft outputs only.
Human review and editing are mandatory before external use.

approval_rules:
- draft report may be system-generated
- final wording must be human-confirmed
- external customer-facing use requires project_manager or higher review
- unreviewed draft must not be treated as final report
