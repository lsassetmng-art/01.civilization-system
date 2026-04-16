# ============================================================
# PROJECT FLOW RC HANDOFF AND CLOSURE OPERATION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation guidance
for operating RC, handoff, and final closure.

implementation_rules:
- each RC/handoff unit should have explicit completion conditions
- execution record should exist once active work begins
- reopen decisions should reference prior execution and review records
- boundary-aware units must preserve blocked-scope exclusion explicitly
- final closure should start only from approved RC/handoff outputs
- closure and restart materials should remain concise,
  factual,
  and restart-friendly
