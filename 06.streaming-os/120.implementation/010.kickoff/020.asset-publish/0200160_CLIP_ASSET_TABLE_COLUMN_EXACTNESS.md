# ============================================================
# K2 CLIP ASSET TABLE-COLUMN EXACTNESS
# ============================================================

status: exact-table-column
domain: clip-asset
table: clip_assets
prepared_by: Zero
owner: Boss

required_columns:
- clip_asset_id
- principal_id
- title
- visibility_state
- publication_state
- created_at
- updated_at

optional_columns:
- source_archive_asset_id
- source_session_id
- description
- thumbnail_asset_ref
- duration_seconds
- clip_start_seconds
- clip_end_seconds
- review_state
- governance_state
- age_gate_level
- monetization_mode
- language_code
- primary_country_code
- category_tags
- published_at

recommended_constraints:
- pk(clip_asset_id)
- fk(principal_id -> streaming_principals.principal_id)
- fk(source_archive_asset_id -> archive_assets.archive_asset_id) nullable
- fk(source_session_id -> streaming_sessions.session_id) nullable
- check(visibility_state in allowed set)
- check(publication_state in allowed set)
- check(review_state in allowed set or null)
- check(governance_state in allowed set or null)
- check(age_gate_level in allowed set or null)
- check(clip_start_seconds >= 0 if not null)
- check(clip_end_seconds >= clip_start_seconds if both not null)

recommended_indexes:
- idx_clip_assets_principal_id
- idx_clip_assets_source_archive_asset_id
- idx_clip_assets_source_session_id
- idx_clip_assets_visibility_state
- idx_clip_assets_publication_state
- idx_clip_assets_published_at
- idx_clip_assets_updated_at

semantic_notes:
- clip identity is separate from archive identity
- clip range is optional at K2 exactness level because derivation mode may vary
- source_archive_asset_id and source_session_id may coexist during transitional derivation flows
- publication_state remains canonical watch-time publication state

open_for_sql_precision_only:
- exact SQL type names
- exact derivation-range storage type
- exact fk action
- exact default clauses
- exact partial index conditions
