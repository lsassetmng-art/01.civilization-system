# ============================================================
# FOUNDATION SQL PRECISION PROVISIONAL REVIEW FILL
# ============================================================

status: canonical-provisional-review-fill
layer: implementation
domain: foundation
system: StreamingOS
prepared_by: Zero
owner: Boss

purpose:
Provides Zero's provisional fill for the K1 SQL precision worksheet.
This is a draft for review acceleration and not final DB sign-off.

review_position:
- provisional
- pending Sato(DB reviewer) review
- no SQL executed

provisional_recommendations:

principal_table:
- principal_id
  - recommended_choice: uuid
  - rationale: stable canonical id for cross-domain reference
- handle
  - recommended_choice: text
  - rationale: flexible business identifier field
- handle_uniqueness
  - recommended_choice: case-insensitive uniqueness via normalized comparison strategy
  - rationale: aligns public lookup stability with user-facing expectations
- display_name
  - recommended_choice: text
  - rationale: avoid premature length over-constraint
- bio
  - recommended_choice: text
  - rationale: long-form profile text flexibility
- followable_flag
  - recommended_choice: boolean default true
  - rationale: simpler default for ordinary public-followable principals
- principal_type / ownership_type / visibility_state / verification_state
  - recommended_choice: text + check constraint
  - rationale: additive evolution is easier than native enum lock-in in early phase

session_table:
- session_id
  - recommended_choice: uuid
  - rationale: stable canonical id
- principal_id FK
  - recommended_choice: uuid FK
  - rationale: direct join clarity
- title
  - recommended_choice: text
  - rationale: avoid premature length cap
- description
  - recommended_choice: text
  - rationale: long-form flexibility
- scheduled_start_at / actual_start_at / actual_end_at
  - recommended_choice: timestamptz
  - rationale: cross-platform and scheduling-safe time semantics
- publish_ready_flag
  - recommended_choice: boolean default false
  - rationale: readiness should be explicitly earned
- governance_block_flag
  - recommended_choice: boolean default false
  - rationale: governance block should be explicit exception state
- session_kind / lifecycle_state / visibility_state / monetization_mode / age_gate_level
  - recommended_choice: text + check constraint
  - rationale: phase-safe extensibility

indexes_and_constraints:
- handle uniqueness
  - recommended_choice: unique normalized-handle strategy
- session principal lookup
  - recommended_choice: index(principal_id)
- lifecycle query support
  - recommended_choice: index(lifecycle_state, scheduled_start_at)
- schedule query support
  - recommended_choice: index(scheduled_start_at)
- partial indexes
  - recommended_choice: defer unless proven necessary in review
  - rationale: keep first DDL simpler

policy_projection_strategy:
- public principal/session reads
  - recommended_choice: projection/view strategy, not unrestricted base-table read
- oversight-safe reads
  - recommended_choice: separate constrained projection
- support-path and transition audit
  - recommended_choice: explicit audit table or audit-linked event record family
