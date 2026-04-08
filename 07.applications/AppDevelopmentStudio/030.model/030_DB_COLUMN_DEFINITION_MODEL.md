# ============================================================
# DB COLUMN DEFINITION MODEL
# ============================================================

status: canonical-draft
layer: model
application: App Development Studio

purpose:
Defines physical DB column specification metadata.

minimum_fields:
- column_definition_id
- table_definition_id
- column_name
- data_type
- nullable
- default_expression
- is_pk
- is_fk
- reference_target
- index_hint
- created_at
- updated_at
