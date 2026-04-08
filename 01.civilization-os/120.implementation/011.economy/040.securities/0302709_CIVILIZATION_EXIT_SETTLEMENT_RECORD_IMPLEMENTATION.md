# ============================================================
# CIVILIZATION EXIT SETTLEMENT RECORD
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the physical implementation design for CIVILIZATION EXIT SETTLEMENT RECORD.

# 2. TABLE PROFILE

Primary profile:
- transaction

# 3. PHYSICAL TABLE

Table:
- exit_settlement_record

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
- exit_ref
- holder_ref
- settlement_amount
- currency_code
- settled_at
- source_ref

# 6. KEYS AND CONSTRAINTS

PK:
- id

Unique:

FK:

Indexes:
- idx_exit_settlement_record_exit_ref
- idx_exit_settlement_record_holder_ref
- idx_exit_settlement_record_settled_at
- idx_exit_settlement_record_status

Checks:
- settlement_amount >= 0

# 7. SOURCE OF TRUTH

Authoritative persistent row state for this securities concept.

# 8. FAILURE HANDLING

Fail closed on:
- invalid issuer / holder / instrument linkage
- lifecycle ambiguity
- invalid valuation, ownership, or settlement semantics
