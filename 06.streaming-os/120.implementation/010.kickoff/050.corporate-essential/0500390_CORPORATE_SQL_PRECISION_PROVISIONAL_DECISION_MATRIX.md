# ============================================================
# CORPORATE SQL PRECISION PROVISIONAL DECISION MATRIX
# ============================================================

status: canonical-provisional-matrix
layer: implementation
domain: corporate-essential
system: StreamingOS
prepared_by: Zero
owner: Boss

matrix:

channel_ids:
- provisional_choice: uuid
- confidence: high
- needs_sato_review: yes

company_ids:
- provisional_choice: uuid nullable on channel_records
- confidence: medium
- needs_sato_review: yes

name_and_handle_fields:
- provisional_choice: text
- confidence: high
- needs_sato_review: yes

visibility_and_state_fields:
- provisional_choice: text + check constraints
- confidence: high
- needs_sato_review: yes

profile_text_fields:
- provisional_choice: text
- confidence: high
- needs_sato_review: yes

oversight_summary_fields:
- provisional_choice: jsonb
- confidence: medium
- needs_sato_review: yes

affiliation_role_scope_fields:
- provisional_choice: text nullable
- confidence: medium
- needs_sato_review: yes

time_fields:
- provisional_choice: timestamptz
- confidence: high
- needs_sato_review: yes

affiliation_uniqueness_strategy:
- provisional_choice: candidate unique(company_id, target_principal_id) with active-scope refinement deferred to review
- confidence: medium
- needs_sato_review: yes

partial_indexes:
- provisional_choice: defer unless justified
- confidence: medium
- needs_sato_review: yes

projection_sql_strategy:
- provisional_choice: separate public, oversight-safe, and limited-self projections
- confidence: high
- needs_sato_review: yes
