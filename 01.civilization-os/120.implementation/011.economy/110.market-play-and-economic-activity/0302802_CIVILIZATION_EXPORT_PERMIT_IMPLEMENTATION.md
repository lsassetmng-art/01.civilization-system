# ============================================================
# CIVILIZATION EXPORT PERMIT
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the physical implementation design for CIVILIZATION EXPORT PERMIT.

# 2. TABLE PROFILE

Primary profile:
- entity

# 3. PHYSICAL TABLE

Table:
- export_permit

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
- applicant_ref
- permit_scope_code
- jurisdiction_ref
- effective_from
- effective_to
- approval_status_code

# 6. KEYS AND CONSTRAINTS

PK:
- id

Unique:

FK:

Indexes:
- idx_export_permit_applicant_ref
- idx_export_permit_jurisdiction_ref
- idx_export_permit_effective_from
- idx_export_permit_effective_to

Checks:
- effective_from < effective_to

# 7. SOURCE OF TRUTH

Authoritative persistent row state for this market-play / marketplace concept.

# 8. FAILURE HANDLING

Fail closed on:
- invalid actor / asset / company / jurisdiction linkage
- lifecycle ambiguity
- invalid economic, trade, or market semantics
