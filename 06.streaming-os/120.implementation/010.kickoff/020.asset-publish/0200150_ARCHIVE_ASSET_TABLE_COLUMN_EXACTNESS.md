# ============================================================
# K2 ARCHIVE ASSET TABLE-COLUMN EXACTNESS
# ============================================================

status: exact-table-column
domain: archive-asset
table: archive_assets
prepared_by: Zero
owner: Boss

required_columns:
- archive_asset_id
- principal_id
- title
- visibility_state
- publication_state
- created_at
- updated_at

optional_columns:
- source_session_id
- description
- thumbnail_asset_ref
- duration_seconds
- review_state
- governance_state
- age_gate_level
- monetization_mode
- language_code
- primary_country_code
- category_tags
- published_at

recommended_constraints:
- pk(archive_asset_id)
- fk(principal_id -> streaming_principals.principal_id)
- fk(source_session_id -> streaming_sessions.session_id) nullable
- check(visibility_state in allowed set)
- check(publication_state in allowed set)
- check(review_state in allowed set or null)
- check(governance_state in allowed set or null)
- check(age_gate_level in allowed set or null)

recommended_indexes:
- idx_archive_assets_principal_id
- idx_archive_assets_source_session_id
- idx_archive_assets_visibility_state
- idx_archive_assets_publication_state
- idx_archive_assets_published_at
- idx_archive_assets_updated_at

semantic_notes:
- publication_state is canonical watch-time publication state
- review_state and governance_state remain distinct
- source_session_id is nullable for imported or detached archive paths
- category_tags may be stored differently later, but semantic field remains fixed

open_for_sql_precision_only:
- exact SQL type names
- tag storage strategy
- exact fk action
- exact default clauses
- exact partial index conditions
