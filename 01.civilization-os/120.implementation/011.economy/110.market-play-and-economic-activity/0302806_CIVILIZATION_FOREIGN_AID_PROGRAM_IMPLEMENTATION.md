# ============================================================
# CIVILIZATION FOREIGN AID PROGRAM
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the physical implementation design for CIVILIZATION FOREIGN AID PROGRAM.

# 2. TABLE PROFILE

Primary profile:
- entity

# 3. PHYSICAL TABLE

Table:
- foreign_aid_program

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
- created_at
- updated_at
- sponsor_ref
- beneficiary_ref
- aid_type_code
- program_scope_code
- start_at
- end_at

# 6. KEYS AND CONSTRAINTS

PK:
- id

Unique:

FK:

Indexes:
- idx_foreign_aid_program_sponsor_ref
- idx_foreign_aid_program_beneficiary_ref
- idx_foreign_aid_program_aid_type_code
- idx_foreign_aid_program_start_at
- idx_foreign_aid_program_end_at

Checks:
- start_at < end_at

# 7. SOURCE OF TRUTH

Authoritative persistent row state for this market-play / marketplace concept.

# 8. FAILURE HANDLING

Fail closed on:
- invalid actor / asset / company / jurisdiction linkage
- lifecycle ambiguity
- invalid economic, trade, or market semantics
