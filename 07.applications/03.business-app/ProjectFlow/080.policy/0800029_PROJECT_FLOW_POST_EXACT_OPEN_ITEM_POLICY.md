# ============================================================
# PROJECT FLOW POST EXACT OPEN ITEM POLICY
# ============================================================

status: canonical
layer: policy
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines how remaining open items should be treated after exact-design resolution.

policy_rules:
- remaining open items must not be misrepresented as unresolved broad design
- implementation-choice items may stay open until the next appropriate phase
- DB execution-phase items must not be guessed without DB-owner review
- later sophistication items must not block ordinary implementation planning
- open-item handling should remain explicit and phase-aware
