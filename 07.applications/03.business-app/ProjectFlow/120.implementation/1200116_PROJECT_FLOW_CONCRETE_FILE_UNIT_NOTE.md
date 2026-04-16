# ============================================================
# PROJECT FLOW CONCRETE FILE UNIT NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation guidance
for early concrete file/task units.

implementation_rules:
- file units should start from approved work-group outputs only
- file units should remain small and explicit
- local file units should progress before most boundary-aware file units
- boundary-aware file units must preserve blocked-scope exclusion explicitly
- file-unit review should happen before dependent units are unlocked
