# ============================================================
# CIVILIZATION CONSTRUCTION PROJECT
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the physical implementation design for CIVILIZATION CONSTRUCTION PROJECT.

# 2. TABLE PROFILE

Primary profile:
- transaction

# 3. PHYSICAL TABLE

Table:
- construction_project

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
- trace_id
- created_at
- updated_at
- sponsor_ref
- contractor_ref
- project_type_code
- target_ref
- start_at
- end_at
- budget_amount
- currency_code

# 6. KEYS AND CONSTRAINTS

PK:
- id

Unique:

FK:

Indexes:
- idx_construction_project_sponsor_ref
- idx_construction_project_contractor_ref
- idx_construction_project_project_type_code
- idx_construction_project_start_at
- idx_construction_project_end_at
- idx_construction_project_status

Checks:
- budget_amount >= 0
- start_at < end_at

# 7. SOURCE OF TRUTH

Authoritative persistent row state for this manufacturing concept.

# 8. FAILURE HANDLING

Fail closed on:
- invalid operator / facility / route / stock linkage
- lifecycle ambiguity
- invalid quantity, capacity, backlog, or maintenance semantics
