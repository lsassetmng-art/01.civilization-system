# ============================================================
# 006 PLAYER OVERVIEW
# ============================================================

status: canonical
layer: development
domain: player
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines the development overview of the player domain.

summary:
The player development layer defines how engineers
should build, test, review, extend, and refactor
player logic without collapsing identity, role, progress,
boundary, lifecycle, or history into one ambiguous structure.

development_intent:
Player logic often drifts into session glue,
screen-state assumptions, or informal role checks.
Development guidance exists to keep player behavior
canonical, lifecycle-safe, and audit-safe.

scope:
- module-boundary guidance
- mutation guidance
- history/replay guidance
- test strategy
- anti-pattern control
- review checklist

required_behavior:
- Development must preserve distinct identity/role/progress/boundary modules.
- Development must preserve live versus historical separation.
- Development must preserve lifecycle gating before participation.
- Development must add tests for restricted-field filtering, mutation denial, and history reads.
