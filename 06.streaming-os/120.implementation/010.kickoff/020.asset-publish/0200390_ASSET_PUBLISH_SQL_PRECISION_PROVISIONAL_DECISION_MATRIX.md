# ============================================================
# ASSET PUBLISH SQL PRECISION PROVISIONAL DECISION MATRIX
# ============================================================

status: canonical-provisional-matrix
layer: implementation
domain: asset-publish
system: StreamingOS
prepared_by: Zero
owner: Boss

matrix:

archive_asset_id:
- provisional_choice: uuid
- confidence: high
- needs_sato_review: yes

clip_asset_id:
- provisional_choice: uuid
- confidence: high
- needs_sato_review: yes

external_publish_job_id:
- provisional_choice: uuid
- confidence: high
- needs_sato_review: yes

asset_text_fields:
- provisional_choice: text
- confidence: high
- needs_sato_review: yes

duration_and_clip_range_fields:
- provisional_choice: integer seconds
- confidence: medium
- needs_sato_review: yes

category_tags:
- provisional_choice: text[]
- confidence: medium
- needs_sato_review: yes

state_fields:
- provisional_choice: text + check constraints
- confidence: high
- needs_sato_review: yes

publish_source_id:
- provisional_choice: uuid
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
- provisional_choice: separate projection-safe and control-plane views
- confidence: high
- needs_sato_review: yes
