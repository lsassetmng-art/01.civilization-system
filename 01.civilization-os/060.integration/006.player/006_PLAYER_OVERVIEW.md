# ============================================================
# 006 PLAYER OVERVIEW
# ============================================================

status: canonical
layer: integration
domain: player
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines the integration overview of the player domain.

summary:
The player integration layer governs how player identity,
role, progress, and boundary are projected,
masked, synchronized, or rejected across boundaries.

integration_intent:
Player is canonical participant truth.
Integration must allow safe projection of player context
without leaking restricted operational roles,
private progression context,
or admin-only boundary state.

scope:
- internal player projection
- external public-safe player projection
- historical player export
- audit-safe player trace
- proposal-only intake for non-canonical external suggestions

integration_rules:
- Canonical player truth remains inside CivilizationOS.
- External consumers must receive projection-safe player context only.
- Historical player export must be explicitly labeled.
- Imported payload must not overwrite canonical player truth without authority.
