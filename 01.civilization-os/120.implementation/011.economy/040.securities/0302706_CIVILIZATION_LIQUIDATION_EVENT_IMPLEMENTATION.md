# ============================================================
# CIVILIZATION LIQUIDATION EVENT
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the physical implementation design for CIVILIZATION LIQUIDATION EVENT.

# 2. TABLE PROFILE

Primary profile:
- transaction

# 3. PHYSICAL TABLE

Table:
- liquidation_event

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
- subject_ref
- liquidation_type_code
- recovery_amount
- currency_code
- occurred_at
- source_ref

# 6. KEYS AND CONSTRAINTS

PK:
- id

Unique:

FK:

Indexes:
- idx_liquidation_event_subject_ref
- idx_liquidation_event_liquidation_type_code
- idx_liquidation_event_occurred_at
- idx_liquidation_event_status

Checks:
- recovery_amount >= 0

# 7. SOURCE OF TRUTH

Authoritative persistent row state for this securities concept.

# 8. FAILURE HANDLING

Fail closed on:
- invalid issuer / holder / instrument linkage
- lifecycle ambiguity
- invalid valuation, ownership, or settlement semantics
