# ============================================================
# COMPANY LISTING READINESS
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the physical implementation design for COMPANY LISTING READINESS
within company-builder and market-play flows.

# 2. TABLE PROFILE

Primary profile:
- workflow

# 3. PHYSICAL TABLE

Table:
- company_listing_readiness

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
- company_id
- readiness_score
- readiness_grade
- checked_at

# 6. KEYS AND CONSTRAINTS

PK:
- id

Unique:

FK:

Indexes:
- idx_company_listing_readiness_company_id
- idx_company_listing_readiness_workflow_status
- idx_company_listing_readiness_checked_at

Checks:
- readiness_score >= 0

# 7. SOURCE OF TRUTH

Authoritative persistent row state for this company-builder concept.

# 8. FAILURE HANDLING

Fail closed on:
- invalid company linkage
- lifecycle ambiguity
- ownership or scope inconsistency
