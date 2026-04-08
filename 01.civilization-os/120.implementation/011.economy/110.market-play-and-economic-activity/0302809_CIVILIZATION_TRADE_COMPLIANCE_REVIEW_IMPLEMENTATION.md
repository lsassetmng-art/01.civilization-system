# ============================================================
# CIVILIZATION TRADE COMPLIANCE REVIEW
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the physical implementation design for CIVILIZATION TRADE COMPLIANCE REVIEW.

# 2. TABLE PROFILE

Primary profile:
- workflow

# 3. PHYSICAL TABLE

Table:
- trade_compliance_review

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
- workflow_status
- review_status
- reason_code
- created_at
- updated_at
- subject_ref
- review_scope_code
- reviewer_ref
- decided_at

# 6. KEYS AND CONSTRAINTS

PK:
- id

Unique:

FK:

Indexes:
- idx_trade_compliance_review_subject_ref
- idx_trade_compliance_review_review_scope_code
- idx_trade_compliance_review_reviewer_ref
- idx_trade_compliance_review_decided_at

Checks:
- review_scope_code <> ''

# 7. SOURCE OF TRUTH

Authoritative persistent row state for this market-play / marketplace concept.

# 8. FAILURE HANDLING

Fail closed on:
- invalid actor / asset / company / jurisdiction linkage
- lifecycle ambiguity
- invalid economic, trade, or market semantics
