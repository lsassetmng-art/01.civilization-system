# ============================================================
# USER CREATABLE COMPANY RULE MATRIX
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the physical implementation design for USER CREATABLE COMPANY RULE MATRIX
within company-builder and market-play flows.

# 2. TABLE PROFILE

Primary profile:
- bridge

# 3. PHYSICAL TABLE

Table:
- company_user_creatable_rule_matrix

# 4. COMMON COLUMN GROUPS

Applied groups:
- identity columns
- audit columns
- lifecycle columns

Additional groups:
- trace columns
- period columns
- workflow columns
  - only where applicable

# 5. COLUMNS

- id
- status
- created_at
- updated_at
- company_type_code
- actor_class_code
- allowed_flag
- reason_code
- country_scope

# 6. KEYS AND CONSTRAINTS

PK:
- id

Unique:

FK:

Indexes:
- idx_company_user_creatable_rule_matrix_company_type_code
- idx_company_user_creatable_rule_matrix_actor_class_code
- idx_company_user_creatable_rule_matrix_country_scope

Checks:
- allowed_flag is required

# 7. SOURCE OF TRUTH

Authoritative persistent row state for this company-builder concept.

# 8. FAILURE HANDLING

Fail closed on:
- invalid company linkage
- lifecycle ambiguity
- ownership or scope inconsistency
