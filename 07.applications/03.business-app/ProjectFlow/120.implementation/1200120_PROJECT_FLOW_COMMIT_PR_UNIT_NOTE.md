# ============================================================
# PROJECT FLOW COMMIT PR UNIT NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation guidance
for early commit / PR-sized units.

implementation_rules:
- commit / PR units should start from approved patch outputs only
- units should remain small,
  additive,
  and review-friendly
- local units should progress before most boundary-aware units
- boundary-aware units must preserve blocked-scope exclusion explicitly
- review and approval should happen before dependent commit / PR units are unlocked
