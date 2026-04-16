# ============================================================
# PROJECT FLOW CONCRETE FILE UNIT OPERATION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation guidance
for operating concrete file/task units.

implementation_rules:
- each file unit should have explicit completion conditions
- each file unit should have review and approval before dependent unlock
- execution record should exist once active work begins
- reopen decisions should reference prior execution and review records
- boundary-aware file units must preserve blocked-scope exclusion explicitly
- patch-level tasks should start only from approved file-unit outputs
