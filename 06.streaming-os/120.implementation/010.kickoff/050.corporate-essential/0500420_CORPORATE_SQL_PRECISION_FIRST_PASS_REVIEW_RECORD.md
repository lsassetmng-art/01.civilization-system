# ============================================================
# CORPORATE SQL PRECISION FIRST-PASS REVIEW RECORD
# ============================================================

status: canonical-first-pass-review
layer: implementation
domain: corporate-essential
system: StreamingOS
prepared_by: Zero
owner: Boss

purpose:
Records Zero's first-pass review result for K5 SQL precision items.
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

channel_review_result:
- channel_id
  - first_pass_result: uuid is recommended
  - confidence: high
  - db_reviewer_confirmation_needed: yes
- owner_principal_id
  - first_pass_result: uuid fk is recommended
  - confidence: high
  - db_reviewer_confirmation_needed: yes
- company_id
  - first_pass_result: uuid nullable is recommended
  - confidence: medium
  - db_reviewer_confirmation_needed: yes
- channel_name
  - first_pass_result: text is recommended
  - confidence: high
  - db_reviewer_confirmation_needed: yes
- channel_handle
  - first_pass_result: text nullable is recommended
  - confidence: medium
  - db_reviewer_confirmation_needed: yes
- visibility_state
  - first_pass_result: text plus check constraint is recommended
  - confidence: high
  - db_reviewer_confirmation_needed: yes

profile_state_review_result:
- channel_profile_state_id
  - first_pass_result: uuid is recommended
  - confidence: high
  - db_reviewer_confirmation_needed: yes
- channel_id fk
  - first_pass_result: uuid fk is recommended
  - confidence: high
  - db_reviewer_confirmation_needed: yes
- profile_image_url / banner_image_url
  - first_pass_result: text is recommended
  - confidence: high
  - db_reviewer_confirmation_needed: yes
- description
  - first_pass_result: text is recommended
  - confidence: high
  - db_reviewer_confirmation_needed: yes
- time fields
  - first_pass_result: timestamptz is recommended
  - confidence: high
  - db_reviewer_confirmation_needed: yes

oversight_review_result:
- corporate_oversight_record_id
  - first_pass_result: uuid is recommended
  - confidence: high
  - db_reviewer_confirmation_needed: yes
- company_id / channel_id fks
  - first_pass_result: uuid fk is recommended
  - confidence: high
  - db_reviewer_confirmation_needed: yes
- oversight_state
  - first_pass_result: text plus check constraint is recommended
  - confidence: high
  - db_reviewer_confirmation_needed: yes
- review_issue_summary_json
  - first_pass_result: jsonb is recommended
  - confidence: medium
  - db_reviewer_confirmation_needed: yes
- stream_visibility_summary_json
  - first_pass_result: jsonb is recommended
  - confidence: medium
  - db_reviewer_confirmation_needed: yes
- note
  - first_pass_result: text is recommended
  - confidence: high
  - db_reviewer_confirmation_needed: yes

affiliation_review_result:
- affiliated_streamer_reference_id
  - first_pass_result: uuid is recommended
  - confidence: high
  - db_reviewer_confirmation_needed: yes
- company_id / target_principal_id fks
  - first_pass_result: uuid fk is recommended
  - confidence: high
  - db_reviewer_confirmation_needed: yes
- affiliation_state
  - first_pass_result: text plus check constraint is recommended
  - confidence: high
  - db_reviewer_confirmation_needed: yes
- affiliation_role / visibility_scope
  - first_pass_result: text nullable is recommended
  - confidence: medium
  - db_reviewer_confirmation_needed: yes
- note
  - first_pass_result: text is recommended
  - confidence: high
  - db_reviewer_confirmation_needed: yes

index_and_policy_result:
- first indexes
  - first_pass_result: minimal owner/company/channel/affiliation indexes are recommended
- partial indexes
  - first_pass_result: defer unless justified
- projection strategy
  - first_pass_result: separate public, oversight-safe, and limited-self projections are recommended
- support-path strategy
  - first_pass_result: explicit audit-linked access path is recommended
