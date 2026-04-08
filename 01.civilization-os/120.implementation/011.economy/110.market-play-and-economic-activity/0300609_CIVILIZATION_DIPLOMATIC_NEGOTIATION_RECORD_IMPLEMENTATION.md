# ============================================================
# CIVILIZATION DIPLOMATIC NEGOTIATION RECORD
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the physical implementation design for CIVILIZATION DIPLOMATIC NEGOTIATION RECORD.

# 2. TABLE PROFILE

Primary profile:
- transaction

# 3. PHYSICAL TABLE

Table:
- market_diplomatic_negotiation_record

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
- channel_ref
- negotiation_type_code
- topic_code
- result_code
- occurred_at
- source_ref

# 6. KEYS AND CONSTRAINTS

PK:
- id

Unique:

FK:

Indexes:
- idx_market_diplomatic_negotiation_record_channel_ref
- idx_market_diplomatic_negotiation_record_negotiation_type_code
- idx_market_diplomatic_negotiation_record_occurred_at
- idx_market_diplomatic_negotiation_record_status

Checks:
- negotiation_type_code <> ''

# 7. SOURCE OF TRUTH

Authoritative persistent row state for this market-play / marketplace concept.

# 8. FAILURE HANDLING

Fail closed on:
- invalid actor / asset / company / jurisdiction linkage
- lifecycle ambiguity
- invalid economic, trade, or market semantics
