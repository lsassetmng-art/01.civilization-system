# ============================================================
# STATIC ART OS PERSONA REFERENCE API EXACT PAYLOAD
# ============================================================

status: active-exact-design
system: StaticArtOS
owner: Boss
prepared_by: Zero

purpose:
Define exact API request/response payloads for Persona reference usage in StaticArtOS.

hard_boundary:
- read/reference/reflection only
- no direct Persona canonical mutation endpoint
- no Persona core write DTO

# ------------------------------------------------------------
# 1. GET ASSET DETAIL
# ------------------------------------------------------------

endpoint:
- GET /assets/{asset_id}

response_200_example:
  asset_id: uuid
  asset_status: published
  creator_persona_reference:
    persona_id: uuid
    relationship_role: creator
    linked_at: 2026-04-18T10:00:00Z
  creator_signed_snapshot_reference:
    snapshot_id: uuid
    signed_snapshot_id: uuid
    applied_snapshot_id: uuid
    target_surface: creator_profile
    applied_at: 2026-04-18T10:05:00Z
    expires_at: 2026-05-18T10:05:00Z
    result_code: applied
  public_display_persona_projection:
    target_surface: public_asset_detail
    signed_snapshot_id: uuid
    display_name: Display Safe Name
    profile_card_summary: Short summary
    avatar_render_ref: https://...
    projection_generated_at: 2026-04-18T10:06:00Z
  exhibition_display_persona_projection:
    target_surface: exhibition_display
    signed_snapshot_id: uuid
    display_name: Display Safe Name
    profile_card_summary: Short summary
    avatar_render_ref: https://...
    projection_generated_at: 2026-04-18T10:06:30Z
  local_view_config:
    badge_visibility: on
    summary_mode: compact
    theme_variant: default

forbidden_in_response:
- mutable_emotion
- mutable_growth
- mutable_memory
- signature_truth
- rights_truth
- internal_parameter_truth

# ------------------------------------------------------------
# 2. PATCH LOCAL VIEW CONFIG
# ------------------------------------------------------------

endpoint:
- PATCH /assets/{asset_id}/persona-local-view-config

request_example:
  persona_id: uuid
  local_view_config:
    badge_visibility: on
    summary_mode: compact
    theme_variant: default

response_200_example:
  asset_id: uuid
  persona_id: uuid
  local_view_config:
    badge_visibility: on
    summary_mode: compact
    theme_variant: default
  updated_at: 2026-04-18T10:10:00Z

validation_rule:
- request may only change presentation-only fields
- request must be rejected if payload attempts Persona mutable truth fields

error_422_example:
  error_code: PERSONA_LOCAL_VIEW_CONFIG_INVALID
  message: local_view_config contains forbidden mutable persona fields

# ------------------------------------------------------------
# 3. INTERNAL RESULT EVENT REFLECTION: SNAPSHOT APPLIED
# ------------------------------------------------------------

endpoint:
- POST /internal/events/persona-snapshot-applied-result

request_example:
  event_id: uuid
  event_name: persona.snapshot.applied.result
  event_version: 1
  emitted_at: 2026-04-18T10:15:00Z
  producer_system: PersonaOS
  subject_type: asset_persona_display
  subject_id: uuid
  correlation_id: uuid
  causation_id: uuid
  source_event_id: uuid
  idempotency_key: string
  payload:
    asset_id: uuid
    persona_id: uuid
    snapshot_id: uuid
    signed_snapshot_id: uuid
    applied_snapshot_id: uuid
    target_surface: public_asset_detail
    applied_at: 2026-04-18T10:15:00Z
    expires_at: 2026-05-18T10:15:00Z
    result_code: applied
    source_system_contract_ref: contract-ref

response_202_example:
  accepted: true
  source_event_id: uuid
  reflection_status: applied_or_ignored_idempotent

# ------------------------------------------------------------
# 4. INTERNAL RESULT EVENT REFLECTION: PROJECTION REFRESHED
# ------------------------------------------------------------

endpoint:
- POST /internal/events/persona-display-projection-refreshed-result

request_example:
  event_id: uuid
  event_name: persona.display_projection.refreshed.result
  event_version: 1
  emitted_at: 2026-04-18T10:20:00Z
  producer_system: PersonaOS
  subject_type: asset_persona_projection
  subject_id: uuid
  correlation_id: uuid
  causation_id: uuid
  source_event_id: uuid
  idempotency_key: string
  payload:
    asset_id: uuid
    persona_id: uuid
    signed_snapshot_id: uuid
    target_surface: public_asset_detail
    display_name: Display Safe Name
    profile_card_summary: Short summary
    avatar_render_ref: https://...
    projection_generated_at: 2026-04-18T10:20:00Z
    result_code: refreshed

response_202_example:
  accepted: true
  source_event_id: uuid
  reflection_status: projection_updated_or_ignored_idempotent

# ------------------------------------------------------------
# 5. INTERNAL RESULT EVENT REFLECTION: RIGHTS VERIFIED
# ------------------------------------------------------------

endpoint:
- POST /internal/events/persona-display-rights-verified-result

request_example:
  event_id: uuid
  event_name: persona.display_rights.verified.result
  event_version: 1
  emitted_at: 2026-04-18T10:25:00Z
  producer_system: BusinessOS_or_PersonaOS_or_CivilizationOS
  subject_type: asset_persona_display_rights
  subject_id: uuid
  correlation_id: uuid
  causation_id: uuid
  source_event_id: uuid
  idempotency_key: string
  payload:
    asset_id: uuid
    persona_id: uuid
    target_surface: public_asset_detail
    verification_result: allowed
    verified_at: 2026-04-18T10:25:00Z
    expires_at: 2026-05-18T10:25:00Z
    governing_contract_ref: contract-ref

response_202_example:
  accepted: true
  source_event_id: uuid
  reflection_status: rights_digest_updated_or_ignored_idempotent

# ------------------------------------------------------------
# 6. FORBIDDEN ENDPOINTS
# ------------------------------------------------------------

forbidden_endpoints:
- POST /persona/core
- PATCH /persona/state
- PATCH /persona/growth
- PATCH /persona/memory
- POST /persona/signature/issue
- POST /persona/signature/revoke
- PATCH /persona/rights

forbidden_reason:
- these imply StaticArtOS direct mutation or ownership of Persona canonical truth

# ------------------------------------------------------------
# 7. FINAL API JUDGEMENT
# ------------------------------------------------------------

final_api_judgement:
- API may expose Persona reference and display-safe projection only.
- API may accept official result events for reflection only.
- API must reject any request shape that attempts Persona canonical mutation.
