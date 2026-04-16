# ============================================================
# PROJECT FLOW ACTUAL IMPLEMENTATION TASK OPERATION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation guidance
for operating actual implementation tasks.

implementation_rules:
- each task should have explicit completion conditions
- each task should have review and approval before dependent unlock
- execution record should exist once active work begins
- reopen decisions should reference prior execution and review records
- boundary-aware tasks must preserve blocked-scope exclusion explicitly
- next implementation units should start only from approved task outputs
