# ============================================================
# MODERATION NOTIFICATION SQL PRECISION PROVISIONAL DECISION MATRIX
# ============================================================

status: canonical-provisional-matrix
layer: implementation
domain: moderation-notification-essential
system: StreamingOS
prepared_by: Zero
owner: Boss

matrix:

review_side_ids:
- provisional_choice: uuid
- confidence: high
- needs_sato_review: yes

review_state_fields:
- provisional_choice: text + check constraints
- confidence: high
- needs_sato_review: yes

due_urgency_time_fields:
- provisional_choice: timestamptz nullable
- confidence: medium
- needs_sato_review: yes

comment_body:
- provisional_choice: text
- confidence: high
- needs_sato_review: yes

evidence_refs:
- provisional_choice: jsonb
- confidence: medium
- needs_sato_review: yes

moderation_state_fields:
- provisional_choice: text + check constraints
- confidence: high
- needs_sato_review: yes

notification_text_fields:
- provisional_choice: text
- confidence: high
- needs_sato_review: yes

read_flag:
- provisional_choice: boolean default false
- confidence: high
- needs_sato_review: yes

alert_family_storage:
- provisional_choice: separate table families
- confidence: medium
- needs_sato_review: yes

partial_indexes:
- provisional_choice: defer unless justified
- confidence: medium
- needs_sato_review: yes

projection_sql_strategy:
- provisional_choice: separate recipient-safe, role-safe, runtime-only projections
- confidence: high
- needs_sato_review: yes
