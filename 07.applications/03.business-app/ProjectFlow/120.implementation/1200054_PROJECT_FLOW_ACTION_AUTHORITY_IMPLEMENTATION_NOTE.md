# ============================================================
# PROJECT FLOW ACTION AUTHORITY IMPLEMENTATION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-prep implications of action authority boundaries.

implementation_rules:
- action guards should be centralized where practical
- UI affordance should distinguish visible-but-blocked from executable
- mediated boundary actions should route through boundary-specific use cases
- review-required exports should present review state before execution
- device-specific layouts must not fork action authority
