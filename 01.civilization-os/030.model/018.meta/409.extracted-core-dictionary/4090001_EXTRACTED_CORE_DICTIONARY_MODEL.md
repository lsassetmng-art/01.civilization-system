# ============================================================
# EXTRACTED CORE DICTIONARY MODEL
# ============================================================

status: canonical
layer: model
scope: extracted-core-dictionary-model
component: extracted-core-dictionary-model

owner: Boss
prepared_by: Zero


# ============================================================
# 1. SHARED FIELDS
# ============================================================

Representative shared fields include:

- extracted_entry_id
- source_document_ref
- code
- display_name
- category_or_type
- parent_relation_id where applicable
- seed_version
- is_enabled


# ============================================================
# 2. FINAL RULE
# ============================================================

Extracted core dictionary model must remain:

- source-aware
- normalized
- seed-oriented
- readable
