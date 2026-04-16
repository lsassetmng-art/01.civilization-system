# ============================================================
# PROJECT FLOW COMMIT PR UNIT ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines the commit / PR-sized unit layer
after patch-level coding tasks are approved.

unit_domains:
- entry bootstrap commits
- navigation commits
- dashboard commits
- project detail commits
- material preview commits
- material export commits
- repository commits
- gateway commits
- sync UI commits
- refresh trigger commits

architecture_rules:
- commit / PR-sized units must be narrower than patch tasks
- one unit should target one coherent reviewable change set
- local units should come before most boundary-aware units
- blocked boundary scope must remain excluded
- commit / PR scope must stay review-friendly and additive
