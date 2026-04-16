# ============================================================
# PROJECT FLOW BUSINESSOS DEPENDENCY SUMMARY
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

summary:
- ProjectFlow depends on BusinessOS for ERP-facing mediation
- ProjectFlow does not depend on BusinessOS for most local UI and local operational logic
- sync boundary and ERP mediation are the main BusinessOS dependency points
- local operational features remain application-owned
