# ============================================================
# PROJECT FLOW NEXT IMPLEMENTATION UNIT NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation guidance
for early next implementation units.

implementation_rules:
- units should start from approved task outputs only
- units should remain small and explicit
- local units should progress before most boundary-aware units
- boundary-aware units must preserve blocked-scope exclusion explicitly
- unit review should happen before dependent units are unlocked
