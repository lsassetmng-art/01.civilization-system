# ============================================================
# PROJECT FLOW COMMON COMPONENT DEPENDENCY SUMMARY
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

summary:
- ProjectFlow should consume shared common components where promoted elsewhere
- ProjectFlow should keep project-specific behavior local
- ProjectFlow should not locally claim ownership of shared component canon
- local additive behavior remains application-scoped until separately promoted
