# ============================================================
# PROJECT FLOW COMMIT PR UNIT OPERATION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation guidance
for operating commit / PR-sized units.

implementation_rules:
- each commit / PR unit should have explicit completion conditions
- execution record should exist once active work begins
- reopen decisions should reference prior execution and review records
- boundary-aware units must preserve blocked-scope exclusion explicitly
- merge or release-prep units should start only from approved commit / PR outputs
- change sets should remain review-friendly and explicit
