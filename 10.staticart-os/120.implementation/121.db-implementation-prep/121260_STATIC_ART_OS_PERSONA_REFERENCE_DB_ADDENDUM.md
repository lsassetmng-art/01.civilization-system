# ============================================================
# STATIC ART OS PERSONA REFERENCE DB ADDENDUM
# ============================================================

status: active-design-note
system: StaticArtOS
owner: Boss
prepared_by: Zero

purpose:
Define the DB-layer addendum for Persona reference usage inside
StaticArtOS under the signed-snapshot consumption rule.

db_policy:
- StaticArtOS stores persona references only.
- StaticArtOS never stores Persona mutable canonical truth.
- Signed snapshot reference is the public/external/exhibition basis.

allowed_tables_to_add:
  - staticart.asset_creator_persona_ref
  - staticart.asset_creator_signed_snapshot_ref
  - staticart.asset_public_display_snapshot_ref
  - staticart.asset_exhibition_display_snapshot_ref
  - staticart.asset_persona_applied_snapshot_history
  - staticart.asset_local_view_config
  - staticart.asset_creator_display_projection

table_specs:
  asset_creator_persona_ref:
    purpose:
      - link asset to creator persona identity anchor
    required_columns:
      - asset_id
      - persona_id
      - linked_at
      - source_event_id
    notes:
      - no mutable persona fields
      - no signature truth

  asset_creator_signed_snapshot_ref:
    purpose:
      - track the signed snapshot applied to creator representation
    required_columns:
      - asset_id
      - persona_id
      - snapshot_id
      - signed_snapshot_id
      - applied_snapshot_id
      - applied_at
      - expires_at
      - source_event_id
    notes:
      - signed snapshot is reference only
      - canonical signature ownership remains outside StaticArtOS

  asset_public_display_snapshot_ref:
    purpose:
      - define the signed snapshot used for public display
    required_columns:
      - asset_id
      - persona_id
      - signed_snapshot_id
      - display_mode
      - applied_at
      - expires_at
      - source_event_id

  asset_exhibition_display_snapshot_ref:
    purpose:
      - define the signed snapshot used for exhibition-facing display
    required_columns:
      - asset_id
      - persona_id
      - signed_snapshot_id
      - display_mode
      - applied_at
      - expires_at
      - source_event_id

  asset_persona_applied_snapshot_history:
    purpose:
      - retain the applied snapshot history for audit/rebuild
    required_columns:
      - history_id
      - asset_id
      - persona_id
      - snapshot_id
      - signed_snapshot_id
      - applied_reason_code
      - applied_at
      - source_event_id
    notes:
      - history is reference history only
      - not persona canonical history

  asset_local_view_config:
    purpose:
      - keep app-local presentation tuning only
    required_columns:
      - asset_id
      - persona_id
      - local_view_config_json
      - updated_at
    notes:
      - local_view_config_json must not hold persona mutable truth

  asset_creator_display_projection:
    purpose:
      - keep rebuildable display-safe projection for UI rendering
    required_columns:
      - asset_id
      - persona_id
      - signed_snapshot_id
      - display_name
      - profile_card_summary
      - avatar_render_ref
      - projection_generated_at
    notes:
      - projection is rebuildable
      - projection is not canonical persona truth

banned_tables:
  - staticart.persona_core
  - staticart.persona_profile
  - staticart.persona_state
  - staticart.persona_emotion
  - staticart.persona_growth
  - staticart.persona_memory
  - staticart.persona_signature
  - staticart.persona_revocation
  - staticart.persona_rights
  - staticart.persona_contract

index_hints:
  - asset_creator_persona_ref(asset_id)
  - asset_creator_persona_ref(persona_id)
  - asset_creator_signed_snapshot_ref(asset_id)
  - asset_public_display_snapshot_ref(asset_id)
  - asset_exhibition_display_snapshot_ref(asset_id)
  - asset_persona_applied_snapshot_history(asset_id, applied_at desc)

rebuild_rule:
- Any projection/display cache must be rebuildable from official snapshot references and formal events.
