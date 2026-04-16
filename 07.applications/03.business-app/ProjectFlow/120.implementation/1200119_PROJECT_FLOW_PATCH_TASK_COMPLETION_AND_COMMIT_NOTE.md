# ============================================================
# PROJECT FLOW PATCH TASK COMPLETION AND COMMIT NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation guidance
for completing patch tasks and handing off to commit/PR-sized units.

implementation_rules:
- each patch task should have explicit completion conditions
- execution record should exist once active work begins
- reopen decisions should reference prior execution and review records
- boundary-aware patch tasks must preserve blocked-scope exclusion explicitly
- commit or PR-sized units should start only from approved patch-task outputs
