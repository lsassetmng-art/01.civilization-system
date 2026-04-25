# ============================================================
# PERSONA BUSINESS CONNECTION CANONICAL
# ============================================================

status: canonical
layer: integration
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Defines the canonical connection summary
between PersonaOS and BusinessOS.

# ============================================================
# 1. OFFICIAL BOUNDARY
# ============================================================

PersonaOS owns:
- persona trust
- persona familiarity
- persona affinity
- reliability feeling
- relation warmth
- relationship-oriented internal state

BusinessOS owns:
- company work knowledge
- company terminology
- AI worker employment and slots
- rank and subscription
- lending and reservation governance
- disclaimer and consent governance
- advisory and execution work governance

# ============================================================
# 2. OFFICIAL CONNECTION RULE
# ============================================================

PersonaOS accepts only official business-origin effects.

PersonaOS validates source, legitimacy, and scope.

PersonaOS then applies canonical internal-state change
where allowed.

BusinessOS may influence,
but may not directly own persona-side result truth.

# ============================================================
# 3. EFFECT APPLICATION RULE
# ============================================================

Accepted effect examples:
- work continuity
- repeated positive support
- reliable business interaction
- stable cooperation
- successful governed activity

Rejected effect examples:
- unauthorized source
- invalid scope
- direct overwrite attempts
- ungoverned ad hoc writes

# ============================================================
# 4. OFFICIAL SUMMARY
# ============================================================

BusinessOS is the source of company work truth.
PersonaOS is the source of persona relation truth.

Their connection is governed,
effect-based,
and ownership-preserving.

# EXACT READY INTEGRATION REINFORCEMENT

status_extension: author-reviewed-with-integration-reinforcement
reinforced_at: 20260417_152041
domain: generic

minimum_integration_requirements:
- define inbound or outbound contract role
- define correlation or idempotency handling
- define retry-safe semantics
- define callback or downstream normalization where applicable
- define dead-letter behavior where applicable

mandatory_integration_controls:
- transport must not become authority
- no silent downstream side effect
- no retry without stop condition
- no missing evidence for callback or outbound result

minimum_integration_acceptance_targets:
- contract success path
- downstream failure path
- retry and dead-letter proof where applicable
