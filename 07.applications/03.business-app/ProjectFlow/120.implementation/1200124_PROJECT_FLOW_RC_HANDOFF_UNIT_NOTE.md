# ============================================================
# PROJECT FLOW RC HANDOFF UNIT NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation guidance
for early release-candidate and handoff units.

implementation_rules:
- RC and handoff units should start from approved merge / release-prep outputs only
- units should remain explicit,
  additive,
  and review-friendly
- local RC units should progress before most boundary-aware RC units
- boundary-aware units must preserve blocked-scope exclusion explicitly
- review and approval should happen before dependent RC or handoff units are unlocked
- handoff summaries should reflect approved reality only
