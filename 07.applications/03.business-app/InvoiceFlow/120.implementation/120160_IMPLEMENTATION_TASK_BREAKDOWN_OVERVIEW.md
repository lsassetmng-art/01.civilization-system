# ============================================================
# IMPLEMENTATION TASK BREAKDOWN OVERVIEW
# ============================================================

status: canonical
layer: implementation
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Defines the implementation task breakdown structure for InvoiceFlow.

breakdown_principles:
- tasks are grouped by implementation phase
- each phase includes backend, frontend, data, test, and review perspectives
- authority boundary safety takes priority over speed
- additive-only implementation is preferred where possible
- no task may blur FRONT_LOCAL and ERP_MASTER meaning

task_group_types:
- backend
- frontend
- data
- test
- review

recommended_execution_rule:
- complete one phase meaningfully before opening many unfinished later-phase branches
