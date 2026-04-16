# ============================================================
# PROJECT FLOW PATCH TASK OPERATION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation guidance
for early patch-level coding tasks.

implementation_rules:
- patch tasks should start from approved file-unit outputs only
- patch tasks should remain small and explicit
- local patch tasks should progress before most boundary-aware patch tasks
- boundary-aware patch tasks must preserve blocked-scope exclusion explicitly
- patch review and approval should happen before dependent patch tasks are unlocked
