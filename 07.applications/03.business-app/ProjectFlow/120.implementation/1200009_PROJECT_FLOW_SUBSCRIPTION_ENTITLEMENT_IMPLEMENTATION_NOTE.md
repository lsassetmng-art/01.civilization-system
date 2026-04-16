# ============================================================
# PROJECT FLOW SUBSCRIPTION ENTITLEMENT IMPLEMENTATION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation note for subscription and entitlement handling.

implementation_targets:
- entitlement state evaluation
- trial period calculation
- read-only mode switch
- action disablement
- read-only visual indicators
- same entitlement enforcement on smartphone and PC

required_controls:
- create action guard
- edit action guard
- export generation guard
- report generation guard
- ERP integration request guard

ui_rule:
Blocked actions in unpaid_read_only mode should be visible but disabled or redirected to subscription explanation,
instead of disappearing silently.
