# ============================================================
# PROJECT FLOW CONCRETE CODING WORK GROUP OPERATION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation guidance
for operating concrete coding work groups.

implementation_rules:
- each work group should have explicit completion conditions
- each work group should have review and approval before dependent unlock
- execution record should exist once active work begins
- reopen decisions should reference prior execution and review records
- boundary-aware work groups must preserve blocked-scope exclusion explicitly
- concrete file/task units should start only from approved work-group outputs
