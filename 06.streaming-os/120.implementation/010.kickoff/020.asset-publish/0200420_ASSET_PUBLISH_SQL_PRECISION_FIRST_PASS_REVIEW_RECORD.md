# ============================================================
# ASSET PUBLISH SQL PRECISION FIRST-PASS REVIEW RECORD
# ============================================================

status: canonical-first-pass-review
layer: implementation
domain: asset-publish
system: StreamingOS
prepared_by: Zero
owner: Boss

purpose:
Records Zero's first-pass review result for K2 SQL precision items.
This is not final DB approval.

review_position:
- first_pass_by_zero
- pending_sato_db_review
- no_sql_executed

review_result_summary:
- strong_candidate_items: many
- hold_items_remaining: yes
- contradiction_found_in_first_pass: none
- ddl_draft_entry_status: not_yet_approved

archive_review_result:
- archive_asset_id
  - first_pass_result: uuid is recommended
  - confidence: high
  - db_reviewer_confirmation_needed: yes
- principal_id / source_session_id
  - first_pass_result: uuid fk is recommended
  - confidence: high
  - db_reviewer_confirmation_needed: yes
- title / description / thumbnail ref
  - first_pass_result: text is recommended
  - confidence: high
  - db_reviewer_confirmation_needed: yes
- duration_seconds
  - first_pass_result: integer is recommended
  - confidence: medium
  - db_reviewer_confirmation_needed: yes
- category_tags
  - first_pass_result: text[] is recommended
  - confidence: medium
  - db_reviewer_confirmation_needed: yes
- published_at
  - first_pass_result: timestamptz is recommended
  - confidence: high
  - db_reviewer_confirmation_needed: yes
- state families
  - first_pass_result: text plus check constraints is recommended
  - confidence: high
  - db_reviewer_confirmation_needed: yes

clip_review_result:
- clip_asset_id
  - first_pass_result: uuid is recommended
  - confidence: high
  - db_reviewer_confirmation_needed: yes
- lineage/provenance refs
  - first_pass_result: uuid fk is recommended
  - confidence: high
  - db_reviewer_confirmation_needed: yes
- duration and clip range fields
  - first_pass_result: integer seconds are recommended
  - confidence: medium
  - db_reviewer_confirmation_needed: yes
- range constraint
  - first_pass_result: explicit check constraint is recommended
  - confidence: high
  - db_reviewer_confirmation_needed: yes

external_publish_review_result:
- external_publish_job_id
  - first_pass_result: uuid is recommended
  - confidence: high
  - db_reviewer_confirmation_needed: yes
- publish_source_type / publish_target_type / job families
  - first_pass_result: text plus check constraints is recommended
  - confidence: high
  - db_reviewer_confirmation_needed: yes
- publish_source_id
  - first_pass_result: uuid is recommended
  - confidence: medium
  - db_reviewer_confirmation_needed: yes
- publish_target_account_ref / override fields / external_reference_id
  - first_pass_result: text is recommended
  - confidence: high
  - db_reviewer_confirmation_needed: yes
- time fields
  - first_pass_result: timestamptz is recommended
  - confidence: high
  - db_reviewer_confirmation_needed: yes

index_and_policy_result:
- first indexes
  - first_pass_result: minimal lineage/provenance/state/timing indexes are recommended
- partial indexes
  - first_pass_result: defer unless justified
- public vs control-plane reads
  - first_pass_result: projection-safe asset views and separate control-plane views are recommended
