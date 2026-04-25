# ============================================================
# MONETIZATION REACTION RANKING AD SQL PRECISION PROVISIONAL DECISION MATRIX
# ============================================================

status: canonical-provisional-matrix
layer: implementation
domain: monetization-reaction-ranking-ad
system: StreamingOS
prepared_by: Zero
owner: Boss

matrix:

domain_ids:
- provisional_choice: uuid
- confidence: high
- needs_sato_review: yes

money_fields:
- provisional_choice: numeric(20,6)
- confidence: medium
- needs_sato_review: yes

currency_code_fields:
- provisional_choice: text
- confidence: medium
- needs_sato_review: yes

state_fields:
- provisional_choice: text + check constraints
- confidence: high
- needs_sato_review: yes

rank_position:
- provisional_choice: integer
- confidence: high
- needs_sato_review: yes

score_value:
- provisional_choice: numeric(20,6)
- confidence: medium
- needs_sato_review: yes

candidate_and_target_linkage:
- provisional_choice: uuid where stable identity exists, paired with text type fields where needed
- confidence: medium
- needs_sato_review: yes

time_fields:
- provisional_choice: timestamptz
- confidence: high
- needs_sato_review: yes

partial_indexes:
- provisional_choice: defer unless justified
- confidence: medium
- needs_sato_review: yes

projection_sql_strategy:
- provisional_choice: separate creator-safe, public-safe, viewer-safe, and runtime-only projections
- confidence: high
- needs_sato_review: yes
