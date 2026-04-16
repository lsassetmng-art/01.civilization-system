# ============================================================
# PROJECT FLOW MERGE RELEASE UNIT NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation guidance
for early merge / release-prep units.

implementation_rules:
- merge / release-prep units should start from approved commit / PR outputs only
- units should remain additive,
  review-friendly,
  and explicit
- local units should progress before most boundary-aware units
- boundary-aware units must preserve blocked-scope exclusion explicitly
- review and approval should happen before dependent merge or release-prep units are unlocked
