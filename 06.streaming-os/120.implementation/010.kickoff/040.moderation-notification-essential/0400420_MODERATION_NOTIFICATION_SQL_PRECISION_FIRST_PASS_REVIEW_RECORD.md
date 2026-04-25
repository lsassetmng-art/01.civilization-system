# ============================================================
# MODERATION NOTIFICATION SQL PRECISION FIRST-PASS REVIEW RECORD
# ============================================================

status: canonical-first-pass-review
layer: implementation
domain: moderation-notification-essential
system: StreamingOS
prepared_by: Zero
owner: Boss

purpose:
Records Zero's first-pass review result for K4 SQL precision items.
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

review_pipeline_review_result:
- review-side ids
  - first_pass_result: uuid is recommended
  - confidence: high
  - db_reviewer_confirmation_needed: yes
- cross-review fks
  - first_pass_result: uuid fk is recommended
  - confidence: high
  - db_reviewer_confirmation_needed: yes
- actor linkage ids
  - first_pass_result: uuid actor references are recommended
  - confidence: high
  - db_reviewer_confirmation_needed: yes
- state families
  - first_pass_result: text plus check constraints is recommended
  - confidence: high
  - db_reviewer_confirmation_needed: yes
- due/urgency fields
  - first_pass_result: timestamptz nullable is recommended
  - confidence: medium
  - db_reviewer_confirmation_needed: yes

moderation_review_result:
- moderation-side ids
  - first_pass_result: uuid is recommended
  - confidence: high
  - db_reviewer_confirmation_needed: yes
- comment_body
  - first_pass_result: text is recommended
  - confidence: high
  - db_reviewer_confirmation_needed: yes
- evidence refs
  - first_pass_result: jsonb is recommended
  - confidence: medium
  - db_reviewer_confirmation_needed: yes
- moderation/report/appeal/decision states
  - first_pass_result: text plus check constraints is recommended
  - confidence: high
  - db_reviewer_confirmation_needed: yes
- note fields
  - first_pass_result: text is recommended
  - confidence: high
  - db_reviewer_confirmation_needed: yes

notification_review_result:
- notification-side ids
  - first_pass_result: uuid is recommended
  - confidence: high
  - db_reviewer_confirmation_needed: yes
- title / preview / detail text
  - first_pass_result: text is recommended
  - confidence: high
  - db_reviewer_confirmation_needed: yes
- read_flag
  - first_pass_result: boolean default false is recommended
  - confidence: high
  - db_reviewer_confirmation_needed: yes
- event/type/state families
  - first_pass_result: text plus check constraints is recommended
  - confidence: high
  - db_reviewer_confirmation_needed: yes
- alert family storage
  - first_pass_result: separate review_alert and escalation_alert families remain recommended
  - confidence: medium
  - db_reviewer_confirmation_needed: yes

index_and_policy_result:
- first indexes
  - first_pass_result: minimal queue/target/recipient/alert indexes are recommended
- partial indexes
  - first_pass_result: defer unless justified
- projection strategy
  - first_pass_result: recipient-safe, role-safe, and runtime-only split is recommended
- moderation mutation authority
  - first_pass_result: explicit authority-bound policy path is recommended
