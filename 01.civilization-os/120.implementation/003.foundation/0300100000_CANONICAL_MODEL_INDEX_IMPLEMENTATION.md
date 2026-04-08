# ============================================================
# CANONICAL MODEL INDEX
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 003.foundation
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the implementation rules for the canonical model index.

# 2. STORAGE

Canonical model registry fields:
- model_code
- model_name
- domain_code
- canonical_status
- version
- source_document
- effective_from
- effective_to

# 3. CONTRACTS

Read contract:
- model_code
- domain_code
- version_selector

Write/update contract:
- registry payload
- review status
- approval context

# 4. EXECUTION

1. validate registry entry
2. verify uniqueness
3. verify canonical ownership
4. register or reject
5. publish index refresh signal

# 5. AUTHORIZATION

Write is governance-controlled only.
Read is system-wide but filtered by scope when needed.

# 6. AUDIT

- model_code
- operation_type
- actor
- source_document
- changed_at

# 7. FAILURE HANDLING

Fail closed on duplicate canonical ownership,
version ambiguity, or missing source reference.
