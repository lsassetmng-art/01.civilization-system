# ============================================================
# CIVILIZATION SANCTIONS SCREENING
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the physical implementation design for CIVILIZATION SANCTIONS SCREENING.

# 2. TABLE PROFILE

Primary profile:
- rule

# 3. PHYSICAL TABLE

Table:
- sanctions_screening_rule

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
- enabled_flag
- version
- created_at
- updated_at
- jurisdiction_ref
- restriction_scope_code
- screening_mode_code
- effective_from
- effective_to

# 6. KEYS AND CONSTRAINTS

PK:
- id

Unique:

FK:

Indexes:
- idx_sanctions_screening_rule_jurisdiction_ref
- idx_sanctions_screening_rule_scope_code
- idx_sanctions_screening_rule_effective_from
- idx_sanctions_screening_rule_effective_to

Checks:
- effective_from < effective_to

# 7. SOURCE OF TRUTH

Authoritative persistent row state for this market-play / marketplace concept.

# 8. FAILURE HANDLING

Fail closed on:
- invalid actor / asset / company / jurisdiction linkage
- lifecycle ambiguity
- invalid economic, trade, or market semantics
