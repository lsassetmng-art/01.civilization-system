# ============================================================
# COMPANY ASSET OPERATION
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the physical implementation design for COMPANY ASSET OPERATION
within company-builder and market-play flows.

# 2. TABLE PROFILE

Primary profile:
- transaction

# 3. PHYSICAL TABLE

Table:
- company_asset_operation

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
- trace_id
- created_at
- updated_at
- company_id
- asset_ref
- operation_type_code
- amount_value
- currency_code
- occurred_at

# 6. KEYS AND CONSTRAINTS

PK:
- id

Unique:

FK:

Indexes:
- idx_company_asset_operation_company_id
- idx_company_asset_operation_asset_ref
- idx_company_asset_operation_operation_type_code
- idx_company_asset_operation_occurred_at

Checks:
- amount_value >= 0

# 7. SOURCE OF TRUTH

Authoritative persistent row state for this company-builder concept.

# 8. FAILURE HANDLING

Fail closed on:
- invalid company linkage
- lifecycle ambiguity
- ownership or scope inconsistency
