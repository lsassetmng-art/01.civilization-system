# ============================================================
# ASSET PUBLISH SQL PRECISION PROVISIONAL REVIEW FILL
# ============================================================

status: canonical-provisional-review-fill
layer: implementation
domain: asset-publish
system: StreamingOS
prepared_by: Zero
owner: Boss

purpose:
Provides Zero's provisional fill for the K2 SQL precision worksheet.
This is a draft for review acceleration and not final DB sign-off.

review_position:
- provisional
- pending Sato(DB reviewer) review
- no SQL executed

provisional_recommendations:

archive_assets:
- archive_asset_id
  - recommended_choice: uuid
- principal_id / source_session_id
  - recommended_choice: uuid FK
- title
  - recommended_choice: text
- description
  - recommended_choice: text
- thumbnail_asset_ref
  - recommended_choice: text
- duration_seconds
  - recommended_choice: integer
  - rationale: exact second granularity is sufficient at current meaning level
- category_tags
  - recommended_choice: text[]
  - rationale: simple tag semantics before richer metadata needs appear
- published_at
  - recommended_choice: timestamptz
- visibility/publication/review/governance/age/monetization fields
  - recommended_choice: text + check constraint

clip_assets:
- clip_asset_id
  - recommended_choice: uuid
- principal_id / source_archive_asset_id / source_session_id
  - recommended_choice: uuid FK
- title
  - recommended_choice: text
- description
  - recommended_choice: text
- thumbnail_asset_ref
  - recommended_choice: text
- duration_seconds / clip_start_seconds / clip_end_seconds
  - recommended_choice: integer
- clip range constraint
  - recommended_choice: check(clip_start_seconds >= 0 and clip_end_seconds > clip_start_seconds)
- category_tags
  - recommended_choice: text[]
- state families
  - recommended_choice: text + check constraint

external_publish_jobs:
- external_publish_job_id
  - recommended_choice: uuid
- publish_source_type / publish_target_type / job_state / dispatch_state / result_state
  - recommended_choice: text + check constraint
- publish_source_id
  - recommended_choice: uuid
  - rationale: closed source-family set is uuid-addressable
- publish_target_account_ref
  - recommended_choice: text
- title_override / description_override / visibility_override
  - recommended_choice: text
- scheduled_publish_at / last_dispatch_at / last_result_at
  - recommended_choice: timestamptz
- external_reference_id
  - recommended_choice: text

indexes_and_constraints:
- archive principal/publication lookup
  - recommended_choice: index(principal_id, publication_state, published_at)
- clip lineage/provenance lookup
  - recommended_choice: index(source_archive_asset_id), index(source_session_id)
- publish job state/timing lookup
  - recommended_choice: index(job_state, scheduled_publish_at)
- partial indexes
  - recommended_choice: defer unless proven necessary in review

policy_projection_strategy:
- archive/clip public reads
  - recommended_choice: projection-safe views
- owner/control-plane reads
  - recommended_choice: owner/control-plane scoped projections
- external publish reads
  - recommended_choice: owner/runtime/integration scoped only
