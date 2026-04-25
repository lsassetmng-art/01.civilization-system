# ============================================================
# FOUNDATION SQL PRECISION PROVISIONAL DECISION MATRIX
# ============================================================

status: canonical-provisional-matrix
layer: implementation
domain: foundation
system: StreamingOS
prepared_by: Zero
owner: Boss

matrix:

principal_id:
- provisional_choice: uuid
- confidence: high
- needs_sato_review: yes

handle_storage:
- provisional_choice: text
- confidence: medium
- needs_sato_review: yes

handle_uniqueness_strategy:
- provisional_choice: case-insensitive normalized uniqueness
- confidence: medium
- needs_sato_review: yes

display_name:
- provisional_choice: text
- confidence: high
- needs_sato_review: yes

bio:
- provisional_choice: text
- confidence: high
- needs_sato_review: yes

followable_flag:
- provisional_choice: boolean default true
- confidence: medium
- needs_sato_review: yes

state_fields:
- provisional_choice: text + check constraints
- confidence: high
- needs_sato_review: yes

session_id:
- provisional_choice: uuid
- confidence: high
- needs_sato_review: yes

time_fields:
- provisional_choice: timestamptz
- confidence: high
- needs_sato_review: yes

publish_ready_flag:
- provisional_choice: boolean default false
- confidence: high
- needs_sato_review: yes

governance_block_flag:
- provisional_choice: boolean default false
- confidence: high
- needs_sato_review: yes

partial_indexes:
- provisional_choice: defer unless justified
- confidence: medium
- needs_sato_review: yes

projection_sql_strategy:
- provisional_choice: separate projection-safe views
- confidence: high
- needs_sato_review: yes
