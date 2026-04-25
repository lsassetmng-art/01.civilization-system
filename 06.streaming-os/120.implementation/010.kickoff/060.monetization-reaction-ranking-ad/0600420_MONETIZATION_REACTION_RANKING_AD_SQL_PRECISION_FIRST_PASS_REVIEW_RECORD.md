# ============================================================
# MONETIZATION REACTION RANKING AD SQL PRECISION FIRST-PASS REVIEW RECORD
# ============================================================

status: canonical-first-pass-review
layer: implementation
domain: monetization-reaction-ranking-ad
system: StreamingOS
prepared_by: Zero
owner: Boss

purpose:
Records Zero's first-pass review result for K6 SQL precision items.
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

monetization_review_result:
- domain ids
  - first_pass_result: uuid is recommended
  - confidence: high
  - db_reviewer_confirmation_needed: yes
- principal and event reference fks
  - first_pass_result: uuid fk is recommended
  - confidence: high
  - db_reviewer_confirmation_needed: yes
- tip_amount / converted_amount
  - first_pass_result: numeric(20,6) is recommended
  - confidence: medium
  - db_reviewer_confirmation_needed: yes
- currency code fields
  - first_pass_result: text is recommended
  - confidence: medium
  - db_reviewer_confirmation_needed: yes
- note / emotional_context_code
  - first_pass_result: text is recommended
  - confidence: high
  - db_reviewer_confirmation_needed: yes
- state families
  - first_pass_result: text plus check constraints is recommended
  - confidence: high
  - db_reviewer_confirmation_needed: yes
- time fields
  - first_pass_result: timestamptz is recommended
  - confidence: high
  - db_reviewer_confirmation_needed: yes

reaction_and_ranking_review_result:
- reaction/ranking ids
  - first_pass_result: uuid is recommended
  - confidence: high
  - db_reviewer_confirmation_needed: yes
- actor_principal_id
  - first_pass_result: uuid nullable fk is recommended
  - confidence: medium
  - db_reviewer_confirmation_needed: yes
- target and state family fields
  - first_pass_result: text plus check constraints is recommended
  - confidence: high
  - db_reviewer_confirmation_needed: yes
- rank_position
  - first_pass_result: integer is recommended
  - confidence: high
  - db_reviewer_confirmation_needed: yes
- score_value
  - first_pass_result: numeric(20,6) is recommended
  - confidence: medium
  - db_reviewer_confirmation_needed: yes

ad_review_result:
- ad ids
  - first_pass_result: uuid is recommended
  - confidence: high
  - db_reviewer_confirmation_needed: yes
- placement / state / display context fields
  - first_pass_result: text plus checks where closed sets are stable is recommended
  - confidence: medium
  - db_reviewer_confirmation_needed: yes
- ad_candidate_id linkage
  - first_pass_result: uuid linkage is recommended
  - confidence: medium
  - db_reviewer_confirmation_needed: yes
- target item linkage
  - first_pass_result: text plus uuid strategy is recommended
  - confidence: medium
  - db_reviewer_confirmation_needed: yes
- time fields
  - first_pass_result: timestamptz is recommended
  - confidence: high
  - db_reviewer_confirmation_needed: yes

index_and_policy_result:
- first indexes
  - first_pass_result: minimal monetization/reaction/ranking/placement indexes are recommended
- partial indexes
  - first_pass_result: defer unless justified
- projection strategy
  - first_pass_result: separate creator-safe, public-safe, viewer-safe, and runtime-only projections are recommended
- raw-event visibility
  - first_pass_result: non-public enforcement is recommended by default
