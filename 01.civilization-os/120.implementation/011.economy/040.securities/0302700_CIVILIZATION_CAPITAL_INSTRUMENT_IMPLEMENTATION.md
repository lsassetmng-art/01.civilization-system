# ============================================================
# CIVILIZATION CAPITAL INSTRUMENT
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the physical implementation design for CIVILIZATION CAPITAL INSTRUMENT.

# 2. TABLE PROFILE

Primary profile:
- entity

# 3. PHYSICAL TABLE

Table:
- capital_instrument

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
- code
- status
- version
- created_at
- updated_at
- issuer_ref
- instrument_type_code
- instrument_name
- currency_code
- issuance_status_code
- issued_at

# 6. KEYS AND CONSTRAINTS

PK:
- id

Unique:

FK:

Indexes:
- idx_capital_instrument_issuer_ref
- idx_capital_instrument_instrument_type_code
- idx_capital_instrument_status
- idx_capital_instrument_issued_at

Checks:
- code <> ''

# 7. SOURCE OF TRUTH

Authoritative persistent row state for this securities concept.

# 8. FAILURE HANDLING

Fail closed on:
- invalid issuer / holder / instrument linkage
- lifecycle ambiguity
- invalid valuation, ownership, or settlement semantics
