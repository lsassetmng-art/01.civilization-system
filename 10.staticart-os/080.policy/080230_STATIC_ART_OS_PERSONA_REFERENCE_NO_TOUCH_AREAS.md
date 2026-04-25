# ============================================================
# STATIC ART OS PERSONA REFERENCE NO TOUCH AREAS
# ============================================================

status: active-boundary-note
system: StaticArtOS
owner: Boss
prepared_by: Zero

purpose:
Clarify which existing StaticArtOS areas should not be rewritten
because of the Persona reference rule.

no_touch_areas:
  asset_business_core:
    - asset core lifecycle
    - review flow
    - publish flow
    - delist/restrict/archive flow
    - sales/subscription business logic
    reason:
      - Persona rule does not replace asset/governance core

  entitlement_library_core:
    - entitlement resolution for asset access
    - library list
    - continue reading
    - continue viewing
    - favorites
    - annotations
    reason:
      - these remain asset-domain concerns, separate from Persona mutable truth

  standalone_navigation_pack:
    - portal
    - dashboard
    - closeout
    - healthcheck
    - freeze manifest
    reason:
      - only wording/signoff extension may be needed, not redesign

  external_integration_scope:
    - CX22073JW related work
    reason:
      - already out of scope in this chat

allowed_touch_pattern:
- additive references
- additive wording
- additive tests
- additive signed snapshot display fields

forbidden_touch_pattern:
- rewriting StaticArtOS core into PersonaOS mirror
- injecting persona mutable state into existing core asset tables
- mixing persona canonical state with entitlement/business truth
