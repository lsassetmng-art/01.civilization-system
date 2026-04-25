# ============================================================
# CREATOR VIEWER SQL PRECISION PROVISIONAL DECISION MATRIX
# ============================================================

status: canonical-provisional-matrix
layer: implementation
domain: creator-viewer-essential
system: StreamingOS
prepared_by: Zero
owner: Boss

matrix:

creator_side_ids:
- provisional_choice: uuid
- confidence: high
- needs_sato_review: yes

creator_preferences:
- provisional_choice: jsonb
- confidence: medium
- needs_sato_review: yes

creator_snapshot_ref:
- provisional_choice: text
- confidence: medium
- needs_sato_review: yes

viewer_side_ids:
- provisional_choice: uuid
- confidence: high
- needs_sato_review: yes

query_text:
- provisional_choice: text
- confidence: high
- needs_sato_review: yes

item_identity_storage:
- provisional_choice: target_type text + target_id uuid
- confidence: medium
- needs_sato_review: yes

follow_uniqueness:
- provisional_choice: unique(principal_id, target_type, target_id)
- confidence: high
- needs_sato_review: yes

playlist_ordering:
- provisional_choice: integer position + per-playlist uniqueness
- confidence: high
- needs_sato_review: yes

watch_queue_ordering:
- provisional_choice: integer position + per-queue uniqueness
- confidence: high
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
- provisional_choice: separate private/shared/authorized projections
- confidence: high
- needs_sato_review: yes
