# ============================================================
# BUSINESS PERSONA MIRROR AND DERIVED STATE POLICY
# ============================================================

status: canonical-meta
system: business-os
layer: meta
owner: Boss
prepared_by: Zero
date: 2026-04-17

purpose:
- Define what PersonaOS may retain after BusinessOS becomes the canonical owner.

policy:
- PersonaOS-side commercial tables, if retained, must be treated as mirror, derived state, or apply-ready state.
- PersonaOS-side retained state must not overrule BusinessOS commercial truth.
- PersonaOS-side retained state must be reconstructible from Business-origin events or Business truth snapshots.

allowed_persona_side_state:
- apply-ready entitlement state
- persona usability state
- persona-local execution eligibility
- persona-local snapshot used to decide whether a capability can be applied now

disallowed_persona_side_authority:
- final order truth
- final billing truth
- final subscription truth
- final contract truth
- final entitlement commercial truth
- final revenue truth

migration_direction:
- Existing Persona-side products / product_skus / orders / entitlements / subscription_plans / user_subscription
  should be reclassified as non-canonical where retained.
- Retained Persona-side copies should be explicitly documented as mirror / derived / apply-ready.

result:
- Persona-side commercial retention policy fixed as mirror/derived/apply-ready only.
