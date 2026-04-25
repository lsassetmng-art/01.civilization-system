# ============================================================
# CORPORATE SQL PRECISION PROVISIONAL REVIEW FILL
# ============================================================

status: canonical-provisional-review-fill
layer: implementation
domain: corporate-essential
system: StreamingOS
prepared_by: Zero
owner: Boss

purpose:
Provides Zero's provisional fill for the K5 SQL precision worksheet.
This is a draft for review acceleration and not final DB sign-off.

review_position:
- provisional
- pending Sato(DB reviewer) review
- no SQL executed

provisional_recommendations:

channel_records:
- channel_id
  - recommended_choice: uuid
  - rationale: stable canonical id across channel-facing references
- owner_principal_id
  - recommended_choice: uuid FK
  - rationale: direct principal ownership linkage
- company_id
  - recommended_choice: uuid nullable
  - rationale: not every channel is company-owned at root level
- channel_name
  - recommended_choice: text
  - rationale: avoid premature length cap
- channel_handle
  - recommended_choice: text nullable
  - rationale: flexible handle introduction path before final uniqueness policy hardening
- visibility_state
  - recommended_choice: text + check constraint
  - rationale: additive state evolution remains easier than early enum lock-in

channel_profile_states:
- channel_profile_state_id
  - recommended_choice: uuid
- channel_id
  - recommended_choice: uuid FK
- profile_image_url / banner_image_url
  - recommended_choice: text
- description
  - recommended_choice: text
- updated_at / created_at
  - recommended_choice: timestamptz

corporate_channel_oversight_records:
- corporate_oversight_record_id
  - recommended_choice: uuid
- company_id / channel_id
  - recommended_choice: uuid FK
- oversight_state
  - recommended_choice: text + check constraint
- review_issue_summary_json
  - recommended_choice: jsonb
  - rationale: summary payload may evolve in shape
- stream_visibility_summary_json
  - recommended_choice: jsonb
  - rationale: summary payload may evolve in shape
- note
  - recommended_choice: text

affiliated_streamer_references:
- affiliated_streamer_reference_id
  - recommended_choice: uuid
- company_id / target_principal_id
  - recommended_choice: uuid FK
- affiliation_state
  - recommended_choice: text + check constraint
- affiliation_role
  - recommended_choice: text nullable
- visibility_scope
  - recommended_choice: text nullable
- note
  - recommended_choice: text

indexes_and_constraints:
- channel owner lookup
  - recommended_choice: index(owner_principal_id)
- channel company lookup
  - recommended_choice: index(company_id)
- channel visibility lookup
  - recommended_choice: index(visibility_state)
- oversight company/channel lookup
  - recommended_choice: index(company_id, channel_id)
- affiliation company/target lookup
  - recommended_choice: index(company_id, target_principal_id)
- optional uniqueness
  - recommended_choice: unique(company_id, target_principal_id) for active affiliation candidate, subject to reviewer confirmation
- partial indexes
  - recommended_choice: defer unless review proves need

policy_projection_strategy:
- public channel reads
  - recommended_choice: projection-safe public views
- oversight-safe reads
  - recommended_choice: separate constrained projections
- affiliation limited self-related subset
  - recommended_choice: dedicated constrained projection, not base-table exposure
- support-path access
  - recommended_choice: explicit audit-linked access path only
