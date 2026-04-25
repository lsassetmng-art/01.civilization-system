# ============================================================
# CREATOR VIEWER SQL PRECISION FIRST-PASS REVIEW RECORD
# ============================================================

status: canonical-first-pass-review
layer: implementation
domain: creator-viewer-essential
system: StreamingOS
prepared_by: Zero
owner: Boss

purpose:
Records Zero's first-pass review result for K3 SQL precision items.
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

creator_side_review_result:
- creator-side ids
  - first_pass_result: uuid is recommended
  - confidence: high
  - db_reviewer_confirmation_needed: yes
- principal-bound creator fks
  - first_pass_result: uuid fk is recommended
  - confidence: high
  - db_reviewer_confirmation_needed: yes
- linked_session_id
  - first_pass_result: uuid fk nullable is recommended
  - confidence: medium
  - db_reviewer_confirmation_needed: yes
- draft title / description
  - first_pass_result: text is recommended
  - confidence: high
  - db_reviewer_confirmation_needed: yes
- source locator / checksum refs
  - first_pass_result: text is recommended
  - confidence: high
  - db_reviewer_confirmation_needed: yes
- creator preferences
  - first_pass_result: jsonb is recommended
  - confidence: medium
  - db_reviewer_confirmation_needed: yes
- analytics snapshot ref
  - first_pass_result: text is recommended
  - confidence: medium
  - db_reviewer_confirmation_needed: yes

viewer_side_review_result:
- viewer-side ids
  - first_pass_result: uuid is recommended
  - confidence: high
  - db_reviewer_confirmation_needed: yes
- principal-bound continuity fks
  - first_pass_result: uuid fk is recommended
  - confidence: high
  - db_reviewer_confirmation_needed: yes
- query_text
  - first_pass_result: text is recommended
  - confidence: high
  - db_reviewer_confirmation_needed: yes
- item identity storage
  - first_pass_result: target_type text plus target_id uuid is recommended
  - confidence: medium
  - db_reviewer_confirmation_needed: yes
- follow uniqueness
  - first_pass_result: unique(principal_id, target_type, target_id) is recommended
  - confidence: high
  - db_reviewer_confirmation_needed: yes
- playlist ordering
  - first_pass_result: integer position plus per-playlist uniqueness is recommended
  - confidence: high
  - db_reviewer_confirmation_needed: yes
- watch queue ordering
  - first_pass_result: integer position plus per-queue uniqueness is recommended
  - confidence: high
  - db_reviewer_confirmation_needed: yes
- time fields
  - first_pass_result: timestamptz is recommended
  - confidence: high
  - db_reviewer_confirmation_needed: yes

index_and_policy_result:
- first indexes
  - first_pass_result: minimal history/search/follow/ordering indexes are recommended
- partial indexes
  - first_pass_result: defer unless justified
- projection strategy
  - first_pass_result: separate private, shared, and authorized projections are recommended
- runtime repair boundary
  - first_pass_result: explicit queue-repair scoped mutation path is recommended
