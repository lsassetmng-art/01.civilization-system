# ============================================================
# PERSONA COMMERCIAL MIRROR MIGRATION GUIDE
# ============================================================

status: canonical-meta
system: business-os
layer: meta
owner: Boss
prepared_by: Zero
date: 2026-04-17

purpose:
- Define the migration direction for Persona-side retained commercial tables and states.

migration_goal:
- Persona-side products / product_skus / orders / entitlements / subscription_plans / user_subscription
  must not remain ambiguous as commercial truth.
- Retained Persona-side copies should be reclassified as mirror / derived / apply-ready state.

migration_direction:
- mark Persona-side commercial-retained structures as non-canonical in responsibility
- define BusinessOS source ids for mirrored state
- define event-driven refresh rules from BusinessOS to PersonaOS
- define Persona-side apply-ready transition rules
- ensure Persona-side retained state is replaceable from Business truth plus event history

boundary_rule:
- Business truth wins on conflict
- Persona-side retained state is downstream and reconstructible
- Persona-side retained state exists for apply and usability, not for final trade authority

result:
- Persona commercial mirror migration direction fixed as a canonical meta guide.
