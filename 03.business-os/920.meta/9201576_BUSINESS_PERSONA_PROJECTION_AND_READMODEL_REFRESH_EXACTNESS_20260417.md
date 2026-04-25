# ============================================================
# BUSINESS PERSONA PROJECTION AND READMODEL REFRESH EXACTNESS
# ============================================================

status: canonical-meta
system: business-os
layer: meta
owner: Boss
prepared_by: Zero
date: 2026-04-17

purpose:
- Fix exactness expectations for downstream projection and read-model refresh behavior.

projection_targets:
- entitlement usability mirror
- apply-ready eligibility
- subscription-derived apply state
- Persona-visible commercial availability state when applicable

refresh_modes:
- event-driven refresh
- snapshot refresh
- divergence-check refresh
- replay-driven refresh

exactness_rule:
- read-model refresh must converge to Business truth.
- projection refresh must not invent missing commercial truth.
- snapshot refresh must be treated as correction toward Business authority.
- downstream read-models remain replaceable from Business truth and transport history.

result:
- Projection and read-model refresh exactness fixed as a canonical meta record.
