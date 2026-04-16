# ============================================================
# PROJECT FLOW MERGE RELEASE UNIT OPERATION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation guidance
for operating merge / release-prep units.

implementation_rules:
- each merge / release-prep unit should have explicit completion conditions
- execution record should exist once active work begins
- reopen decisions should reference prior execution and review records
- boundary-aware units must preserve blocked-scope exclusion explicitly
- release-candidate or handoff units should start only from approved merge / release-prep outputs
- merged scope should remain explicit,
  additive,
  and review-friendly
