# ============================================================
# PERSONA APPLY READY PROJECTION RULE
# ============================================================

status: canonical-meta
system: business-os
layer: meta
owner: Boss
prepared_by: Zero
date: 2026-04-17

purpose:
- Fix how PersonaOS should project Business-origin commercial truth into apply-ready state.

projection_rule:
- PersonaOS apply-ready state is downstream only
- PersonaOS apply-ready state must be derived from Business-origin purchase_complete / grant / revoke / subscription_change events
- PersonaOS may keep local usability state, but not final commercial truth

minimum_projection_targets:
- persona apply eligibility
- persona usable entitlement mirror
- persona local state showing whether a granted commercial capability can be applied now

projection_conflict_rule:
- if Persona retained state and Business-origin commercial truth differ, Business truth wins
- Persona projection must converge to Business truth-derived state

projection_rebuild_rule:
- apply-ready projection must be replaceable from Business truth and event history or snapshot inputs

result:
- Persona apply-ready projection rule fixed as a canonical meta record.
