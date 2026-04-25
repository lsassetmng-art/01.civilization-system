# ============================================================
# STATIC ART OS PERSONA REFERENCE EVENT CONTRACT EXACT
# ============================================================

status: active-exact-design
system: StaticArtOS
owner: Boss
prepared_by: Zero

purpose:
Define the exact event contract for Persona reference usage inside
StaticArtOS.

core_boundary:
- StaticArtOS is request/reflection side only.
- Persona canonical mutable state remains outside StaticArtOS.
- StaticArtOS consumes signed snapshot and display-safe projection results only.
- StaticArtOS never performs direct Persona canonical mutation.

# ------------------------------------------------------------
# 1. EVENT PRINCIPLES
# ------------------------------------------------------------

event_principles:
- Every mutation-intent must leave StaticArtOS as a request event only.
- Every authoritative state change must arrive as an official result event.
- StaticArtOS local tables may be updated only from official result events.
- All result events must carry source_event_id and idempotency identity.
- Replay must be safe.

required_common_fields:
- event_id
- event_name
- event_version
- emitted_at
- producer_system
- subject_type
- subject_id
- correlation_id
- causation_id
- source_event_id
- idempotency_key
- payload

required_common_rule:
- event_id is globally unique
- event_version starts at 1
- source_event_id points to the authoritative upstream event/result
- idempotency_key must stay stable across retry/replay of same business fact

# ------------------------------------------------------------
# 2. OUTBOUND REQUEST EVENTS FROM STATICARTOS
# ------------------------------------------------------------

outbound_request_events:
  staticart.persona.display_snapshot.apply.requested:
    purpose:
      - request application of a Persona signed snapshot to a StaticArt asset display surface
    payload_fields:
      - asset_id
      - persona_id
      - target_surface
      - requested_snapshot_usage
      - requested_by_actor_id
      - reason_code
      - requested_at
    allowed_target_surface:
      - creator_profile
      - public_asset_detail
      - exhibition_display
    hard_rule:
      - request only
      - no authoritative apply in StaticArtOS

  staticart.persona.display_projection.refresh.requested:
    purpose:
      - request refreshed display-safe projection for a signed snapshot already selected upstream
    payload_fields:
      - asset_id
      - persona_id
      - signed_snapshot_id
      - target_surface
      - requested_at

  staticart.persona.display_rights_verification.requested:
    purpose:
      - request official rights verification result for Persona-linked display usage
    payload_fields:
      - asset_id
      - persona_id
      - target_surface
      - requested_usage_code
      - requested_at

# ------------------------------------------------------------
# 3. INBOUND RESULT EVENTS TO STATICARTOS
# ------------------------------------------------------------

inbound_result_events:
  persona.snapshot.applied.result:
    purpose:
      - authoritative result that a snapshot/signature selection is approved and applicable
    payload_fields:
      - asset_id
      - persona_id
      - snapshot_id
      - signed_snapshot_id
      - applied_snapshot_id
      - target_surface
      - applied_at
      - expires_at
      - result_code
      - source_system_contract_ref
    accepted_result_code:
      - applied
      - rejected
      - expired
      - superseded
    reflection_rule:
      - StaticArtOS updates only reference/history/projection-safe tables

  persona.display_projection.refreshed.result:
    purpose:
      - authoritative display-safe projection result for rendering
    payload_fields:
      - asset_id
      - persona_id
      - signed_snapshot_id
      - target_surface
      - display_name
      - profile_card_summary
      - avatar_render_ref
      - projection_generated_at
      - result_code
    reflection_rule:
      - projection is rebuildable
      - projection is never treated as Persona canonical truth

  persona.display_rights.verified.result:
    purpose:
      - authoritative display-rights verification result for Persona-linked display
    payload_fields:
      - asset_id
      - persona_id
      - target_surface
      - verification_result
      - verified_at
      - expires_at
      - governing_contract_ref
    accepted_verification_result:
      - allowed
      - denied
      - expired
      - review_required
    reflection_rule:
      - StaticArtOS stores only result digest/reference
      - StaticArtOS does not own rights canonical truth

# ------------------------------------------------------------
# 4. EVENT IDENTITY / IDEMPOTENCY
# ------------------------------------------------------------

idempotency_rule:
- snapshot apply result uniqueness:
  - unique by source_event_id + asset_id + target_surface
- projection refresh result uniqueness:
  - unique by source_event_id + signed_snapshot_id + target_surface
- rights verification result uniqueness:
  - unique by source_event_id + asset_id + target_surface + verification_result

replay_rule:
- replay of same source_event_id must not create duplicate history rows
- replay may refresh projection row if payload is identical or newer by projection_generated_at
- stale result with older authoritative timestamp must not overwrite newer applicable row

# ------------------------------------------------------------
# 5. EVENT TO TABLE REFLECTION MAP
# ------------------------------------------------------------

reflection_map:
  persona.snapshot.applied.result:
    write_targets:
      - staticart.asset_creator_signed_snapshot_ref
      - staticart.asset_public_display_snapshot_ref
      - staticart.asset_exhibition_display_snapshot_ref
      - staticart.asset_persona_applied_snapshot_history

  persona.display_projection.refreshed.result:
    write_targets:
      - staticart.asset_creator_display_projection

  persona.display_rights.verified.result:
    write_targets:
      - derived display-safe verification digest only if needed
    do_not_write:
      - persona_rights canonical truth

# ------------------------------------------------------------
# 6. EXPLICITLY FORBIDDEN EVENTS
# ------------------------------------------------------------

forbidden_event_shapes:
- staticart.persona.mutable_state.updated
- staticart.persona.memory.updated
- staticart.persona.growth.updated
- staticart.persona.signature.issued.by_staticart
- staticart.persona.signature.revoked.by_staticart
- staticart.persona.rights.canonical.updated.by_staticart

forbidden_reason:
- these imply StaticArtOS acting as Persona canonical owner or direct mutator

# ------------------------------------------------------------
# 7. FINAL EVENT JUDGEMENT
# ------------------------------------------------------------

final_event_judgement:
- StaticArtOS may emit request events.
- StaticArtOS may consume authoritative result events.
- StaticArtOS may reflect only reference/projection-safe local state.
- StaticArtOS must not emit or consume a shape that implies Persona canonical ownership transfer.
