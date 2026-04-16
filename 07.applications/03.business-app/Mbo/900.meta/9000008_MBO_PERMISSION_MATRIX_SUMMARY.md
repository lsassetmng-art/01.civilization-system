# ============================================================
# MBO PERMISSION MATRIX SUMMARY
# ============================================================

status: canonical
application: Mbo
layer: meta
owner: Boss
prepared_by: Zero

summary:
Role-based permission matrix is fixed for Mbo.

fixed_roles:
- objective_owner
- manager
- evaluator
- HR_operator
- executive_viewer
- department_template_admin
- system_auditor

major_decisions:
- objective_owner creates and updates own objective execution records
- manager handles review scheduling and review logging
- evaluator drafts and confirms evaluations
- HR_operator handles ERP transmission, resend, export, and reminders
- executive_viewer remains read-only
- template administration is separated
- audit visibility is separated

next_recommended_design_step:
- state transition fixation
- final lock control fixation
- ERP exact outbound payload fixation
