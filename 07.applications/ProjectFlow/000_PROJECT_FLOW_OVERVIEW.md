# ============================================================
# PROJECT FLOW OVERVIEW
# ============================================================

status: canonical
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
ProjectFlow is a project execution front for daily operational use.

summary:
ProjectFlow manages project execution,
task progress,
milestones,
issues,
risks,
time entry,
member workload,
and ERP synchronization.

positioning:
ProjectFlow is not the full ERP.
It is a field operation front that cooperates with ERP
through shared BusinessOS integration capability.

core_formula:
ProjectFlow
=
project execution
+ task management
+ progress tracking
+ issue/risk management
+ workload view
+ ERP import/export orchestration

erp_boundary:
ProjectFlow must not own full ERP transmission logic.
ERP integration is not direct application-local integration.
It is a shared BusinessOS-controlled integration path.

source_of_truth:
ERP owns:
- official project code
- customer
- contract
- formal budget
- formal actual cost
- billing and sales
- formal organization references

ProjectFlow owns:
- task execution
- issue
- risk
- milestone operation
- work logs
- operational comments
- daily progress visibility
