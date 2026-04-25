# ============================================================
# STATIC ART OS PERSONA REFERENCE DB EXACT SCHEMA
# ============================================================

status: active-exact-design
system: StaticArtOS
owner: Boss
prepared_by: Zero

purpose:
Define the exact DB schema for Persona reference usage inside StaticArtOS.

hard_boundary:
- no persona core duplicate tables
- no persona mutable canonical truth
- signed snapshot basis only
- local projection/cache must be rebuildable

# ------------------------------------------------------------
# 1. TABLE: asset_creator_persona_ref
# ------------------------------------------------------------

table:
  name: staticart.asset_creator_persona_ref
  purpose:
    - stable link from asset to creator persona identity anchor

columns:
  - name: asset_id
    type: uuid
    null: false
  - name: persona_id
    type: uuid
    null: false
  - name: relationship_role
    type: text
    null: false
    allowed:
      - creator
  - name: linked_at
    type: timestamptz
    null: false
  - name: source_event_id
    type: uuid
    null: false
  - name: created_at
    type: timestamptz
    null: false
  - name: updated_at
    type: timestamptz
    null: false

keys_and_constraints:
- pk: asset_id
- fk: asset_id -> staticart asset canonical table
- uq: asset_id + persona_id
- check: relationship_role = 'creator'

indexes:
- idx_asset_creator_persona_ref_persona_id on (persona_id)
- idx_asset_creator_persona_ref_source_event_id on (source_event_id)

# ------------------------------------------------------------
# 2. TABLE: asset_creator_signed_snapshot_ref
# ------------------------------------------------------------

table:
  name: staticart.asset_creator_signed_snapshot_ref
  purpose:
    - current creator-facing signed snapshot reference

columns:
  - name: asset_id
    type: uuid
    null: false
  - name: persona_id
    type: uuid
    null: false
  - name: snapshot_id
    type: uuid
    null: false
  - name: signed_snapshot_id
    type: uuid
    null: false
  - name: applied_snapshot_id
    type: uuid
    null: false
  - name: target_surface
    type: text
    null: false
    allowed:
      - creator_profile
  - name: applied_at
    type: timestamptz
    null: false
  - name: expires_at
    type: timestamptz
    null: true
  - name: result_code
    type: text
    null: false
    allowed:
      - applied
      - expired
      - superseded
  - name: source_event_id
    type: uuid
    null: false
  - name: created_at
    type: timestamptz
    null: false
  - name: updated_at
    type: timestamptz
    null: false

keys_and_constraints:
- pk: asset_id
- uq: source_event_id + asset_id + target_surface
- fk: asset_id -> staticart asset canonical table
- fk-style logical integrity: persona_id must match asset_creator_persona_ref.persona_id for same asset_id
- check: target_surface = 'creator_profile'

indexes:
- idx_asset_creator_signed_snapshot_ref_signed_snapshot_id on (signed_snapshot_id)
- idx_asset_creator_signed_snapshot_ref_persona_id on (persona_id)
- idx_asset_creator_signed_snapshot_ref_expires_at on (expires_at)

# ------------------------------------------------------------
# 3. TABLE: asset_public_display_snapshot_ref
# ------------------------------------------------------------

table:
  name: staticart.asset_public_display_snapshot_ref
  purpose:
    - current public asset detail display snapshot reference

columns:
  - name: asset_id
    type: uuid
    null: false
  - name: persona_id
    type: uuid
    null: false
  - name: signed_snapshot_id
    type: uuid
    null: false
  - name: display_mode
    type: text
    null: false
    allowed:
      - public_asset_detail
  - name: applied_at
    type: timestamptz
    null: false
  - name: expires_at
    type: timestamptz
    null: true
  - name: result_code
    type: text
    null: false
    allowed:
      - applied
      - expired
      - superseded
  - name: source_event_id
    type: uuid
    null: false
  - name: created_at
    type: timestamptz
    null: false
  - name: updated_at
    type: timestamptz
    null: false

keys_and_constraints:
- pk: asset_id
- uq: source_event_id + asset_id + display_mode
- fk: asset_id -> staticart asset canonical table

indexes:
- idx_asset_public_display_snapshot_ref_persona_id on (persona_id)
- idx_asset_public_display_snapshot_ref_signed_snapshot_id on (signed_snapshot_id)
- idx_asset_public_display_snapshot_ref_expires_at on (expires_at)

# ------------------------------------------------------------
# 4. TABLE: asset_exhibition_display_snapshot_ref
# ------------------------------------------------------------

table:
  name: staticart.asset_exhibition_display_snapshot_ref
  purpose:
    - current exhibition display snapshot reference

columns:
  - name: asset_id
    type: uuid
    null: false
  - name: persona_id
    type: uuid
    null: false
  - name: signed_snapshot_id
    type: uuid
    null: false
  - name: display_mode
    type: text
    null: false
    allowed:
      - exhibition_display
  - name: applied_at
    type: timestamptz
    null: false
  - name: expires_at
    type: timestamptz
    null: true
  - name: result_code
    type: text
    null: false
    allowed:
      - applied
      - expired
      - superseded
  - name: source_event_id
    type: uuid
    null: false
  - name: created_at
    type: timestamptz
    null: false
  - name: updated_at
    type: timestamptz
    null: false

keys_and_constraints:
- pk: asset_id
- uq: source_event_id + asset_id + display_mode
- fk: asset_id -> staticart asset canonical table

indexes:
- idx_asset_exhibition_display_snapshot_ref_persona_id on (persona_id)
- idx_asset_exhibition_display_snapshot_ref_signed_snapshot_id on (signed_snapshot_id)
- idx_asset_exhibition_display_snapshot_ref_expires_at on (expires_at)

# ------------------------------------------------------------
# 5. TABLE: asset_persona_applied_snapshot_history
# ------------------------------------------------------------

table:
  name: staticart.asset_persona_applied_snapshot_history
  purpose:
    - authoritative result reflection history for replay/audit on StaticArt side

columns:
  - name: history_id
    type: uuid
    null: false
  - name: asset_id
    type: uuid
    null: false
  - name: persona_id
    type: uuid
    null: false
  - name: snapshot_id
    type: uuid
    null: true
  - name: signed_snapshot_id
    type: uuid
    null: true
  - name: target_surface
    type: text
    null: false
    allowed:
      - creator_profile
      - public_asset_detail
      - exhibition_display
  - name: applied_reason_code
    type: text
    null: false
  - name: applied_at
    type: timestamptz
    null: false
  - name: result_code
    type: text
    null: false
  - name: source_event_id
    type: uuid
    null: false
  - name: created_at
    type: timestamptz
    null: false

keys_and_constraints:
- pk: history_id
- uq: source_event_id + asset_id + target_surface
- fk: asset_id -> staticart asset canonical table

indexes:
- idx_asset_persona_applied_snapshot_history_asset_id_applied_at on (asset_id, applied_at desc)
- idx_asset_persona_applied_snapshot_history_persona_id on (persona_id)
- idx_asset_persona_applied_snapshot_history_signed_snapshot_id on (signed_snapshot_id)

# ------------------------------------------------------------
# 6. TABLE: asset_local_view_config
# ------------------------------------------------------------

table:
  name: staticart.asset_local_view_config
  purpose:
    - app-local presentation tuning only

columns:
  - name: asset_id
    type: uuid
    null: false
  - name: persona_id
    type: uuid
    null: false
  - name: local_view_config_json
    type: jsonb
    null: false
  - name: updated_by_actor_id
    type: uuid
    null: true
  - name: updated_at
    type: timestamptz
    null: false

keys_and_constraints:
- pk: asset_id
- fk: asset_id -> staticart asset canonical table
- check:
  - local_view_config_json must not contain persona mutable truth fields
  - local_view_config_json is presentation-only

indexes:
- idx_asset_local_view_config_persona_id on (persona_id)

# ------------------------------------------------------------
# 7. TABLE: asset_creator_display_projection
# ------------------------------------------------------------

table:
  name: staticart.asset_creator_display_projection
  purpose:
    - display-safe rebuildable projection for UI rendering

columns:
  - name: asset_id
    type: uuid
    null: false
  - name: persona_id
    type: uuid
    null: false
  - name: signed_snapshot_id
    type: uuid
    null: false
  - name: target_surface
    type: text
    null: false
    allowed:
      - creator_profile
      - public_asset_detail
      - exhibition_display
  - name: display_name
    type: text
    null: false
  - name: profile_card_summary
    type: text
    null: true
  - name: avatar_render_ref
    type: text
    null: true
  - name: projection_generated_at
    type: timestamptz
    null: false
  - name: projection_version
    type: integer
    null: false
  - name: source_event_id
    type: uuid
    null: false
  - name: created_at
    type: timestamptz
    null: false
  - name: updated_at
    type: timestamptz
    null: false

keys_and_constraints:
- pk: asset_id + target_surface
- uq: source_event_id + signed_snapshot_id + target_surface
- fk: asset_id -> staticart asset canonical table

indexes:
- idx_asset_creator_display_projection_persona_id on (persona_id)
- idx_asset_creator_display_projection_signed_snapshot_id on (signed_snapshot_id)
- idx_asset_creator_display_projection_projection_generated_at on (projection_generated_at desc)

# ------------------------------------------------------------
# 8. FORBIDDEN TABLES
# ------------------------------------------------------------

forbidden_tables:
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

# ------------------------------------------------------------
# 9. FINAL DB JUDGEMENT
# ------------------------------------------------------------

final_db_judgement:
- StaticArtOS DB may store reference, history, local view config, and rebuildable projection only.
- StaticArtOS DB may not store Persona mutable canonical truth.
- Signed snapshot reference is the only valid display identity basis for Persona-linked surfaces.
