# ============================================================
# PROJECT FLOW APPLICATION DEFINITION
# ============================================================

status: canonical
layer: constitution
application: ProjectFlow
owner: Boss
prepared_by: Zero

definition:
ProjectFlow is a project management application
that imports formal project references from ERP,
supports day-to-day execution,
and returns selected operational results through shared BusinessOS integration.

included_capabilities:
- project list
- project detail
- task management
- milestone management
- issue management
- risk management
- work log and time entry
- workload visibility
- import status view
- export status view
- sync retry
- dashboard and alerts

excluded_capabilities:
- full accounting
- final contract authority
- billing authority
- payroll authority
