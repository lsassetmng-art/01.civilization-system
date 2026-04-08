# ============================================================
# GENERAL LAW
# MODEL
# ============================================================

status: draft
layer: model
domain: 013.law
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for general law structures.

# 2. CORE ENTITIES

- law_code
- law_article
- law_scope
- law_status

# 3. STATE MODEL

law_code:
- law_code_id
- law_code_name
- law_type_code
- jurisdiction_scope
- law_status

law_article:
- law_article_id
- law_code_id
- article_code
- article_text_ref
- article_status

law_scope:
- law_scope_id
- law_code_id
- scope_type_code
- scope_ref
- scope_status

law_status:
- law_status_id
- law_code_id
- active_flag
- revised_flag
- changed_at

# 4. INTEGRITY RULES

- law article must belong to one law code
- law scope must be explicit
- active status must be explicit
- hidden law mutation without revision state is prohibited

