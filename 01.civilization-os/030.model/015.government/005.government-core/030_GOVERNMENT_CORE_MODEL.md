# ============================================================
# GOVERNMENT CORE
# MODEL
# ============================================================

status: draft
layer: model
domain: 015.government
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical core model for government structures.

# 2. CORE ENTITIES

- government_unit
- governing_authority
- authority_term
- government_status

# 3. STATE MODEL

government_unit:
- government_unit_id
- government_type_code
- government_scope
- government_status
- established_at

governing_authority:
- authority_id
- government_unit_id
- authority_type_code
- authority_scope
- authority_status

authority_term:
- authority_term_id
- authority_id
- starts_at
- ends_at
- term_status

government_status:
- government_status_id
- government_unit_id
- stability_code
- legitimacy_code
- changed_at

# 4. INTEGRITY RULES

- authority must belong to one government unit
- active term must preserve authority identity
- government scope must be explicit
- ambiguous governing authority is prohibited

