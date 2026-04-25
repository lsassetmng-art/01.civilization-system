# ============================================================
# CORPORATE INDEX DDL DRAFT REVIEW MEMO
# ============================================================

status: canonical-ddl-draft-memo
layer: implementation
domain: corporate-essential
system: StreamingOS
prepared_by: Zero
owner: Boss

draft_index_plan:

channel_records:
- idx_channel_records_owner_principal_id
  - columns:
    - owner_principal_id
- idx_channel_records_company_id
  - columns:
    - company_id
- idx_channel_records_visibility_state
  - columns:
    - visibility_state

corporate_channel_oversight_records:
- idx_corporate_channel_oversight_records_company_channel
  - columns:
    - company_id
    - channel_id

affiliated_streamer_references:
- idx_affiliated_streamer_references_company_target
  - columns:
    - company_id
    - target_principal_id

candidate_unique_strategy:
- affiliated streamer reference uniqueness
  - draft_note: unique(company_id, target_principal_id) is a candidate pending active/inactive lifecycle review
- channel handle uniqueness
  - draft_note: deferred until DB review confirms scope and normalization strategy

index_strategy_note:
- keep first-pass index set minimal and visibility-driven
- avoid speculative partial indexes at this stage
- do not treat affiliation indexes as ownership-authority indexes

open_review_points:
- whether visibility_state index on channel_records is sufficient
- whether company_id + visibility_state composite would become necessary later
- whether affiliation uniqueness needs filtered/partial form for active states only
- whether channel_handle index should be introduced immediately or deferred
