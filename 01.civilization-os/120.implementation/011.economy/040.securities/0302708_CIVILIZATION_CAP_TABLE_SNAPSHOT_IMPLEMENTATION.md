# ============================================================
# CIVILIZATION CAP TABLE SNAPSHOT
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the physical implementation design for CIVILIZATION CAP TABLE SNAPSHOT.

# 2. TABLE PROFILE

Primary profile:
- aggregate

# 3. PHYSICAL TABLE

Table:
- cap_table_snapshot

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
- issuer_ref
- snapshot_type_code
- total_shares_value
- diluted_shares_value
- snapped_at
- source_ref

# 6. KEYS AND CONSTRAINTS

PK:
- id

Unique:

FK:

Indexes:
- idx_cap_table_snapshot_issuer_ref
- idx_cap_table_snapshot_snapshot_type_code
- idx_cap_table_snapshot_snapped_at

Checks:
- total_shares_value >= 0
- diluted_shares_value >= 0

# 7. SOURCE OF TRUTH

Authoritative persistent row state for this securities concept.

# 8. FAILURE HANDLING

Fail closed on:
- invalid issuer / holder / instrument linkage
- lifecycle ambiguity
- invalid valuation, ownership, or settlement semantics
