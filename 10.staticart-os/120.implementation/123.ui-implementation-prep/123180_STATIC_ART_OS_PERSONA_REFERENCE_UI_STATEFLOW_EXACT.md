# ============================================================
# STATIC ART OS PERSONA REFERENCE UI STATEFLOW EXACT
# ============================================================

status: active-exact-design
system: StaticArtOS
owner: Boss
prepared_by: Zero

purpose:
Define the exact UI stateflow for Persona reference usage in StaticArtOS.

hard_boundary:
- UI may present signed snapshot-based display only
- UI may edit local_view_config only
- UI may not become a Persona canonical editor

# ------------------------------------------------------------
# 1. CREATOR WORKSPACE
# ------------------------------------------------------------

screen:
- creator_workspace_asset_detail

stateflow:
  initial:
    - load asset core
    - load creator_persona_reference
    - load creator_signed_snapshot_reference
    - load creator/public/exhibition display projections
    - load local_view_config

  loaded:
    show:
      - creator persona reference summary card
      - signed snapshot status chip
      - expiry status chip if expires_at exists
      - local view config panel
      - projection preview tabs:
        - creator profile
        - public asset detail
        - exhibition display

  local_view_editing:
    allowed:
      - badge visibility
      - summary mode
      - theme variant
      - layout hint
    forbidden:
      - mutable persona state editing
      - emotion editing
      - growth editing
      - memory editing
      - signature issuance/revocation

  save_local_view_config:
    - validate presentation-only keys
    - send PATCH persona-local-view-config
    - update local state on success
    - show validation error on forbidden keys

  snapshot_expired:
    show:
      - expired status
      - last known projection as stale if allowed
      - refresh/request guidance only
    do_not_do:
      - invent local persona truth
      - silently replace with mutable local copy

# ------------------------------------------------------------
# 2. MARKETPLACE / PUBLIC ASSET DETAIL
# ------------------------------------------------------------

screen:
- public_asset_detail

stateflow:
  initial:
    - load public_display_persona_projection
    - load display rights verification digest if applicable

  loaded:
    show:
      - display-safe creator card
      - display name
      - short summary
      - avatar render ref
    do_not_show:
      - mutable internal persona state
      - non-display-safe internal fields

  denied_or_missing_rights:
    show:
      - creator card unavailable or restricted state
    do_not_show:
      - fallback invented local truth

# ------------------------------------------------------------
# 3. EXHIBITION DISPLAY
# ------------------------------------------------------------

screen:
- exhibition_display_preview
- exhibition_asset_card

stateflow:
  initial:
    - load exhibition_display_persona_projection

  loaded:
    show:
      - exhibition-safe creator display summary
      - exhibition display chip
      - snapshot freshness/expiry if needed

  expired_or_missing:
    show:
      - unavailable / stale state
    do_not_show:
      - locally fabricated canonical persona profile

# ------------------------------------------------------------
# 4. ADMIN / AUDIT VIEW
# ------------------------------------------------------------

screen:
- persona_reference_audit_panel

stateflow:
  show:
    - source_event_id
    - signed_snapshot_id
    - projection_generated_at
    - result_code
    - expires_at
  do_not_show_as_editable:
    - persona mutable canonical fields

# ------------------------------------------------------------
# 5. UI ERROR / FALLBACK RULES
# ------------------------------------------------------------

ui_error_rules:
- missing reference:
  - show not linked or not available
- expired snapshot:
  - show expired state
- missing projection:
  - show projection unavailable
- forbidden local_view_config payload:
  - show validation error and keep last valid local state

fallback_rule:
- fallback may be UI-safe absence/stale indicator only
- fallback may not fabricate Persona canonical truth

# ------------------------------------------------------------
# 6. FINAL UI JUDGEMENT
# ------------------------------------------------------------

final_ui_judgement:
- UI reads signed snapshot-based display state.
- UI edits presentation-only local config.
- UI never edits or claims Persona canonical truth.
