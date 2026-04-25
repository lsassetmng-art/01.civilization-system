# ============================================================
# ASSET PUBLISH INDEX DDL DRAFT REVIEW MEMO
# ============================================================

status: canonical-ddl-draft-memo
layer: implementation
domain: asset-publish
system: StreamingOS
prepared_by: Zero
owner: Boss

draft_index_plan:

archive_assets:
- idx_archive_assets_principal_id_publication_state_published_at
  - columns:
    - principal_id
    - publication_state
    - published_at

clip_assets:
- idx_clip_assets_source_archive_asset_id
  - columns:
    - source_archive_asset_id
- idx_clip_assets_source_session_id
  - columns:
    - source_session_id

external_publish_jobs:
- idx_external_publish_jobs_job_state_scheduled_publish_at
  - columns:
    - job_state
    - scheduled_publish_at

index_strategy_note:
- minimal first-pass index set only
- public asset access and control-plane review are intentionally separated
- partial indexes remain deferred unless DB review shows clear need

open_review_points:
- whether publication_state needs separate standalone index
- whether source lineage/provenance queries require composites
- whether scheduled_publish_at should be indexed alone in addition to composite
- whether partial indexes remain deferred
