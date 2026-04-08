# ============================================================
# MARKETPLACE PREFERRED SELLER REVERSION
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the physical implementation design for MARKETPLACE PREFERRED SELLER REVERSION.

# 2. TABLE PROFILE

Primary profile:
- workflow

# 3. PHYSICAL TABLE

Table:
- marketplace_preferred_seller_reversion_workflow

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
- seller_ref
- previous_status_code
- next_status_code
- decided_at

# 6. KEYS AND CONSTRAINTS

PK:
- id

Unique:

FK:

Indexes:
- idx_marketplace_preferred_seller_reversion_workflow_seller_ref
- idx_marketplace_preferred_seller_reversion_workflow_workflow_status
- idx_marketplace_preferred_seller_reversion_workflow_decided_at

Checks:
- previous_status_code <> next_status_code

# 7. SOURCE OF TRUTH

Authoritative persistent row state for this market-play / marketplace concept.

# 8. FAILURE HANDLING

Fail closed on:
- invalid seller / buyer / creator / asset linkage
- lifecycle ambiguity
- invalid pricing, tax, fee, or entitlement semantics
