# ============================================================
# COMPANY EVALUATION
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the physical implementation design for COMPANY EVALUATION
within company-builder and market-play flows.

# 2. TABLE PROFILE

Primary profile:
- aggregate

# 3. PHYSICAL TABLE

Table:
- company_evaluation

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
- trace_id
- created_at
- updated_at
- company_id
- evaluation_type_code
- score_value
- grade_code
- evaluated_at
- source_ref

# 6. KEYS AND CONSTRAINTS

PK:
- id

Unique:

FK:

Indexes:
- idx_company_evaluation_company_id
- idx_company_evaluation_type_code
- idx_company_evaluation_evaluated_at

Checks:
- score_value >= 0

# 7. SOURCE OF TRUTH

Authoritative persistent row state for this company-builder concept.

# 8. FAILURE HANDLING

Fail closed on:
- invalid company linkage
- lifecycle ambiguity
- ownership or scope inconsistency
