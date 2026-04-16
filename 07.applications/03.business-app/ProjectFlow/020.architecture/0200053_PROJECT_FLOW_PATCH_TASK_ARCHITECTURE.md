# ============================================================
# PROJECT FLOW PATCH TASK ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines the patch-level coding task layer
after concrete file/task units are approved.

patch_task_domains:
- entry wiring patches
- initializer patches
- navigation patches
- container composition patches
- reducer branch patches
- viewmodel dispatch patches
- preview binding patches
- export action patches
- repository method patches
- gateway mapping patches
- sync ui patches
- refresh trigger patches

architecture_rules:
- patch tasks must be narrower than file/task units
- patch tasks should preserve file ownership and package boundaries
- local patch tasks should come before most boundary-aware patch tasks
- blocked boundary scope must remain excluded
- one patch task should target one small explicit change area
