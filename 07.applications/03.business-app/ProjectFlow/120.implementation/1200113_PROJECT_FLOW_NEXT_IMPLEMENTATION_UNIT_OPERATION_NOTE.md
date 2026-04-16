# ============================================================
# PROJECT FLOW NEXT IMPLEMENTATION UNIT OPERATION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation guidance
for operating next implementation units.

implementation_rules:
- each unit should have explicit completion conditions
- each unit should have review and approval before dependent unlock
- execution record should exist once active work begins
- reopen decisions should reference prior execution and review records
- boundary-aware units must preserve blocked-scope exclusion explicitly
- concrete coding work groups should start only from approved unit outputs
