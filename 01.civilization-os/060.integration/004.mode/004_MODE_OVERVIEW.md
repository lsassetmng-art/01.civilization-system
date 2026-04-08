# ============================================================
# 004 MODE OVERVIEW
# ============================================================

status: canonical
layer: integration
domain: mode
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines the integration overview of the mode domain.

summary:
The mode integration layer governs how effective mode context
is projected, synchronized, masked, exported, or rejected
across internal and external boundaries.

integration_intent:
Mode is canonical context, not UI-only state.
When mode crosses boundaries, it must remain typed,
scope-safe, visibility-safe, and non-authoritative
outside its canonical source.

scope:
- internal mode projection
- external mode projection
- mode masking
- historical mode projection
- mode synchronization constraints
- mode rejection handling

non_scope:
- hidden UI route flags as canonical integration truth
- unrestricted raw mode dumps
- external ownership of canonical mode truth
- silent mode overwrite across boundaries

integration_rules:
- Canonical mode ownership remains inside CivilizationOS.
- Exported mode must be projected by consumer scope.
- Historical mode must be explicitly labeled.
- External consumers must not receive unrestricted internal mode semantics.
- Imported mode input must not overwrite canonical mode truth without authority.
