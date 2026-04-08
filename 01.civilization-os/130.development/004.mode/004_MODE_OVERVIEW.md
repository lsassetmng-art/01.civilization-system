# ============================================================
# 004 MODE OVERVIEW
# ============================================================

status: canonical
layer: development
domain: mode
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines the development overview of the mode domain.

summary:
The mode development layer defines how engineers
should build, test, review, extend, and refactor
mode logic without breaking canonical scope,
conflict rules, visibility rules, or historical separation.

development_intent:
Mode logic easily becomes scattered across UI routing,
temporary flags, or hidden runtime shortcuts.
Development guidance exists to keep mode implementation
explicit, typed, conflict-safe, and audit-safe.

scope:
- implementation guidance
- test strategy
- anti-pattern control
- review checklist
- migration guidance
- extension guidance

required_behavior:
- Development must preserve explicit mode typing.
- Development must preserve current versus historical separation.
- Development must preserve conflict detection and fail-closed behavior.
- Development must add tests for masking, switching, denial, and rollback.
